export class Popout extends HTMLElement {
  document: string;

  constructor() {
    super();
  }

  connectedCallback() {
    if (this.dataset.document === undefined) return;
    const doc = this.dataset.document;
    this.addEventListener("click", () => {
      const features = {
        menubar: "no",
        toolbar: "no",
        location: "no",
        status: "no",
        resizable: "yes",
        scrollbars: "yes",
      };
      const featureString = Object.entries(features)
        .map(([k, v]) => `${k}=${v}`)
        .join(",");
      const popup = window.open("", featureString);
      if (popup) {
        popup.document.documentElement.innerHTML = doc;
      } else {
        alert(
          "popup blocked. Allow popups in your browser to pop out the tables into a new window.",
        );
      }
    });
  }
}
