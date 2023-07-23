import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dismissable"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
  }

  close() {
    this.element.remove();
  }
}
