import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const letters = "abcdefghijklmnopqrstuvwxyz";
    const originalTitle = this.element.innerText;
    const speed = 50; // higher is slower
    const rate = 1 / 4;

    this.element.onmouseover = function (event) {
      let iterations = 0;
      const interval = setInterval(() => {
        event.target.innerText = event.target.innerText
          .split("")
          .map((letter, index) => {
            if (index < iterations) return originalTitle[index];
            return letters[Math.floor(Math.random() * 26)];
          })
          .join("");

        if (iterations >= originalTitle.length) clearInterval(interval);

        iterations += rate;
      }, speed);
    };
  }
}
