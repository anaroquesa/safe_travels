import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["togglableElement"]

  connect() {
<<<<<<< HEAD
    console.log("Hello from calendar_controller.js")
  }

  toggle() {
    console.log("Hello from calendar_controller.js")
=======
    console.log("Hello from toggle_controller.js")
  }

  toggle() {
    console.log("Hello from toggle_controller.js")
>>>>>>> 559924e334bda7d35eed2850e1c3aab597c0c01a
    this.togglableElementTarget.classList.toggle("d-none");
  }

}
