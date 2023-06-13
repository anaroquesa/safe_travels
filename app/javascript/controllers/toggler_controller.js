import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggler"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log(this.togglableElementTarget)
  }

  toggle() {
    console.log("Hello from toggler_controller.js")
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
