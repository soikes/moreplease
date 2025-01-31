import "htmx.org";

document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll("[data-fade-in]").forEach((elem) => {
    elem.classList.add("fade-init");
  });

  document.querySelectorAll("[data-js-required]").forEach((elem) => {
    elem.classList.add("visible");
  });
});
