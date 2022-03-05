import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['button', 'link']

  // this is the KEYWORD TO access the controller
  // this.element reference to the controller element

  connect() {
    this.linkTarget.classList.add('d-none')
  }

  disable() {
    this.buttonTarget.innerText = "Stimilus!!";
    this.buttonTarget.disabled = true;
    this.linkTarget.classList.remove('d-none');
  }

  reset() {
    this.buttonTarget.innerText = 'Click me!';
    this.buttonTarget.disabled = false;
    this.linkTarget.classList.add('d-none');
  }
}
