package test

import (
	"errors"
	"log"
	"net/http"
	"net/url"
	"os"
	"strings"
	"syscall"
	"testing"
	"time"

	"github.com/soikes/moreplease/cmd/nabu/tasks"
	"github.com/soikes/moreplease/pkg/search"
	"github.com/soikes/moreplease/sites/sql/mux"
	sqlSearch "github.com/soikes/moreplease/sites/sql/search"
	"golang.org/x/net/html"
)

func TestMain(m *testing.M) {
	err := tasks.BuildTemplates()
	if err != nil {
		log.Printf("test setup failed: %s", err.Error())
		os.Exit(1)
	}
	os.Exit(m.Run())
}

// TestDeadlinks crawls a running mux and reports any links that return a non-200 response code.
func TestDeadlinks(t *testing.T) {
	storage := search.MemoryIndexStorage{}
	storage.CreateIndex(sqlSearch.AssetDocumentProvider{})
	m := mux.StaticMux{
		IndexStorage: &storage,
	}
	addr := "127.0.0.1:9009"
	go func(t *testing.T) {
		err := http.ListenAndServe(addr, m.NewMux())
		if err != nil {
			t.Log(err)
		}
	}(t)
	for {
		_, err := http.Get(`http://` + addr)
		if err != nil {
			if errors.Is(err, syscall.ECONNREFUSED) {
				time.Sleep(time.Millisecond * 100)
				continue
			} else {
				t.Log(err)
				t.FailNow()
			}
		}
		break
	}
	crawl(t, addr)
}

var baseUrl string

func crawl(t *testing.T, addr string) {
	baseUrl = "http://" + addr
	_, err := url.Parse(baseUrl)
	if err != nil {
		t.Fatal(err)
	}
	err = traverse(t, "start", "/", 2) // Links are followed on index and only peeked on each topic page.
	if err != nil {
		t.Fatal(err)
	}
}

// traverse is a recursive function used to perform a crawl of the site for checking links.
// At the specified depth, only check the http status code of all the links on the page instead of crawling.
// External links are not crawled, they are only checked for http status code.
func traverse(t *testing.T, prevUrl string, linkUrl string, depth int) error {
	external := false
	u, err := url.Parse(linkUrl)
	if err != nil {
		return err
	}
	var linkUrlAbs string
	if !u.IsAbs() {
		linkUrlAbs = baseUrl + linkUrl
	} else {
		linkUrlAbs = linkUrl
		external = true
	}
	rsp, err := http.Get(linkUrlAbs)
	if err != nil {
		return err
	}
	defer rsp.Body.Close()
	if code := rsp.StatusCode; code < 200 || code >= 400 {
		t.Errorf(`%s -> %s: unexpected HTTP %d`, prevUrl, linkUrl, code)
	}
	if depth == 0 || external {
		return nil
	}
	doc, err := html.Parse(rsp.Body)
	if err != nil {
		return err
	}
	for n := range doc.Descendants() {
		if href, ok := getAHref(n); ok {
			hrefUrl, err := url.Parse(href)
			if err != nil {
				return err
			}
			if strings.Trim(u.Path, "/") == strings.Trim(hrefUrl.Path, "/") {
				if hrefUrl.Fragment != "" {
					continue // Skip fragment links when the href points to the same page we are on.
				}
			}
			// t.Logf("%s\t\t%s", nextUrl, href) // For debugging.
			err = traverse(t, linkUrlAbs, href, depth-1)
			if err != nil {
				return err
			}
		}
	}
	return nil
}

func getAHref(n *html.Node) (string, bool) {
	if n.Type == html.ElementNode && n.Data == "a" {
		for _, attr := range n.Attr {
			if attr.Key == "href" {
				return attr.Val, true
			}
		}
	}
	return "", false
}
