import "htmx.org";
import {
  initFadeIn,
  startFadeIn,
  showJSRequiredElements,
} from "../../../common/www/src/hooks";

document.addEventListener("DOMContentLoaded", () => {
  showJSRequiredElements();
  initFadeIn();
  startFadeIn();
});
