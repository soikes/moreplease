// initFadeIn hides fade-in elements to prepare them for fade-in.
// Fade in is a two step process so elements are progressively enhanced.
export function initFadeIn(): void {
  document.querySelectorAll("[data-fade-in]").forEach((elem) => {
    elem.classList.add("init-fade");
  });
}

// startFadeIn begins the fade-in transition for all elements tagged as fade-in.
export function startFadeIn(): void {
  document.querySelectorAll("[data-fade-in]").forEach((elem) => {
    elem.classList.add("start-fade");
  });
}

// showJSRequiredElements unhides elements tagged as requiring Javascript.
export function showJSRequiredElements(): void {
  document.querySelectorAll("[data-js-required]").forEach((elem) => {
    elem.removeAttribute("data-js-required");
  });
}
