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
			UniqueVisitors:         &templates.ScalarMetric{},
			PageViews:              &templates.ScalarMetric{},
			AverageSessionDuration: &templates.ScalarMetric{},
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
	h.getPageViews(dur)
	h.getAverageSessionDuration(dur)
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

func (h ScalarMetricsHandler) getPageViews(period time.Duration) {
	views, err := h.Storage.PageViewsInLast(period)
	if err != nil {
		log.Printf("failed to get page views: %s", err)
		h.Component.PageViews.Err(err)
	} else {
		h.Component.PageViews.Set(views)
	}
}

func (h ScalarMetricsHandler) getAverageSessionDuration(period time.Duration) {
	duration, err := h.Storage.AverageSessionDurationInLast(period)
	if err != nil {
		log.Printf("failed to get average session duration: %s", err)
		h.Component.AverageSessionDuration.Err(err)
	} else {
		h.Component.AverageSessionDuration.Set(duration)
	}
}
