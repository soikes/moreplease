package search

type IndexStorage interface {
	CreateIndex(DocumentProvider) error
	OpenIndex() (Index, error)
}

type DocumentProvider interface {
	Documents() ([]Document, error)
}

type Document struct {
	ID      string `json:"id"`
	Title   string `json:"title"`
	URL     string `json:"url"`
	Content string `json:"content"`
}
