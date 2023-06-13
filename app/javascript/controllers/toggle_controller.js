import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["togglableElement"]

  connect() {
    console.log("Hello from toggle_controller.js")
  }

  toggle() {
    console.log("Hello from toggle_controller.js")
    this.togglableElementTarget.classList.toggle("d-none");
  }

}
