package main

// Tasks:
// - Create sites/sql/topics/TOPIC.templ
// - Create sites/sql/topics/embed/TOPIC/
// - Create sites/sql/topics/embed/TOPIC/schema/
// - Create sites/sql/topics/embed/TOPIC/schema/schema.sql
// - add TOPIC constant to sites/sql/site/site.go

// import (
// 	"flag"
// 	"fmt"
// 	"os"
// )

// func main() {
// 	defaultUsage := flag.Usage
// 	flag.Usage = func() {
// 		fmt.Println("Generates boilerplate for a More {} Please topic within a site.")
// 		defaultUsage()
// 	}
// 	if len(os.Args) < 3 {
// 		fmt.Println("usage: generate SITE_PATH TOPIC_NAME")
// 		os.Exit(1)
// 	}
// 	site_path = os.Args[1]
// 	topic_name = os.Args[2]
// 	templFile = topic_name+".templ"

// 	err = os.Create(cfg.)
// }
