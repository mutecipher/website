import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
  }

  toggle() {
    const body = document.body;
    body.classList.toggle("dark");
  }
}
