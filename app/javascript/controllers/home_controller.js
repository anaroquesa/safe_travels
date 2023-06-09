import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {

  static targets = ["logo", "body"]

  connect() {
    console.log("Hello from red", this.logoTarget, this.bodyTarget)
    this.displayLogo()
  }


  displayLogo(){
    setTimeout(() => {
        this.logoTarget.classList.add("d-none")

    }, 5000);
  }
}
