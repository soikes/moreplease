package limiter

import (
	"testing"
	"time"
)

func TestLimiter(t *testing.T) {
	l := NewLimiter(5, 100*time.Millisecond)
	var alloweds []bool
	for i := 0; i < 10; i++ {
		alloweds = append(alloweds, l.Allow())
	}
	for i, allowed := range alloweds[:5] {
		if !allowed {
			t.Logf("got disallowed, wanted allowed at %d", i)
			t.Fail()
		}
	}
	for i, allowed := range alloweds[5:] {
		if allowed {
			t.Logf("got allowed, wanted disallowed at %d", i)
			t.Fail()
		}
	}
	time.Sleep(100 * time.Millisecond)
	if !l.Allow() {
		t.Log("got disallowed, wanted allowed after 100ms")
		t.Fail()
	}
}
