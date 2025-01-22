package handlers

import (
	"log"
	"net/http"
	"time"

	"soikke.li/moreplease/cmd/metrics/templates"
	"soikke.li/moreplease/pkg/metrics"
)

type ScalarMetricsHandler struct {
	Storage   metrics.Storage
	Component *templates.ScalarMetrics
}

func NewScalarMetricsHandler(storage metrics.Storage) ScalarMetricsHandler {
	sh := ScalarMetricsHandler{
		Storage: storage,
		Component: &templates.ScalarMetrics{
			UniqueVisitors: &templates.ScalarMetric{},
		},
	}
	return sh
}

func (h ScalarMetricsHandler) Perform(r *http.Request) {
	p := r.URL.Query().Get("period")
	dur, err := time.ParseDuration(p)
	if err != nil {
		dur = defaultPeriod
	}
	h.getUniqueVisitors(dur)
}

func (h ScalarMetricsHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	h.Perform(r)
	_ = h.Component.Component().Render(r.Context(), w)
}

func (h ScalarMetricsHandler) getUniqueVisitors(period time.Duration) {
	visitors, err := h.Storage.UniqueVisitorsInLast(period)
	if err != nil {
		log.Printf("failed to get unique visitors: %s", err)
		h.Component.UniqueVisitors.Err(err)
	} else {
		h.Component.UniqueVisitors.Set(visitors)
	}
}
