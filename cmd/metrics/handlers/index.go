package handlers

import (
	"net/http"
	"time"

	"soikke.li/moreplease/cmd/metrics/templates"
	"soikke.li/moreplease/pkg/metrics"
)

const defaultPeriod = time.Hour

type IndexHandler struct {
	Storage   metrics.Storage
	Component *templates.Index
}

func NewIndexHandler(storage metrics.Storage) IndexHandler {
	ih := IndexHandler{
		Storage: storage,
		Component: &templates.Index{
			ScalarMetrics: &templates.ScalarMetrics{
				UniqueVisitors: &templates.ScalarMetric{},
			},
		},
	}
	return ih
}

func (h IndexHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	sh := NewScalarMetricsHandler(h.Storage)
	sh.Perform(r)
	h.Component.ScalarMetrics = sh.Component // TODO: How to solve this problem...
	_ = h.Component.Component().Render(r.Context(), w)
}
