package limiter

import (
	"time"
)

type Config struct {
	limit   int
	perTime time.Duration
	tick    *time.Ticker
	tokens  chan struct{}
	quit    chan struct{}
}

func NewLimiter(limit int, perTime time.Duration) Config {
	cfg := Config{
		limit:   limit,
		perTime: perTime,
	}
	cfg.tokens = make(chan struct{}, limit)
	for i := 0; i < limit; i++ {
		cfg.tokens <- struct{}{}
	}
	go refill(cfg)
	return cfg
}

func refill(cfg Config) {
	cfg.tick = time.NewTicker(cfg.perTime)
	defer cfg.tick.Stop()
	for {
		select {
		case <-cfg.tick.C:
			select {
			case cfg.tokens <- struct{}{}:
			default:
			}
		case <-cfg.quit:
			return
		}
	}
}

func (cfg *Config) Allow() bool {
	select {
	case <-cfg.tokens:
		return true
	default:
		return false
	}
}
func (cfg *Config) Stop() {
	cfg.quit <- struct{}{}
}
