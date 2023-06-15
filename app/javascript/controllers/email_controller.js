import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'

// Connects to data-controller="email"
export default class extends Controller {
  static values = {
    id: String
  }
  connect() {
    console.log("Hello from email_controller.js")

  }

  show(e) {
    e.stopImmediatePropagation();
    Swal.fire({
      title: 'Do you want to confirm your itinerary?',
      text: 'We will send all details to your emergency contact',
      icon: 'question',
      confirmButtonText: 'Confirm',
      showCloseButton: true,
      showCancelButton: true,
      focusConfirm: true,
      showDenyButton: true,
    }).then((result) => {
      /* Read more about isConfirmed, isDenied below */
      if (result.isConfirmed) {
        fetch('/status_update', {
          method: "POST", // *GET, POST, PUT, DELETE, etc.
          headers: {
            "Content-Type": "application/json",
            // 'Content-Type': 'application/x-www-form-urlencoded',
          },
          body: JSON.stringify({id: this.idValue}), // body data type must match "Content-Type" header
        });
        Swal.fire('Safety measures sent!', '', 'success')
      } else if (result.isDenied) {
        Swal.fire('Make sure to confirm before you travel!', '', 'info')
      }
    })
  }

  popup(e) {
  e.stopImmediatePropagation();
  Swal.fire({
    title: 'Sweet!',
    text: 'Modal with a custom image.',
    imageUrl: 'https://unsplash.it/400/200',
    imageWidth: 400,
    imageHeight: 200,
    imageAlt: 'Custom image',
  })
  }
}
