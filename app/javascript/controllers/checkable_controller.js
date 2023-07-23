import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input"];

  connect() {
    matchMedia("(prefers-color-scheme: dark)");
  }

  toggleDarkMode() {
    let checked = !this.inputTarget.checked;
    this.inputTarget.checked = checked ? false : true;
    console.log(this.inputTarget.checked);
  }
}
