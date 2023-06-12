import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["editButton", "form"]

  editDate(event) {
    event.preventDefault();
    this.formTarget.classList.toggle("hidden-form");
  }

  updateDate(event) {
    event.preventDefault();
    const form = event.target;
    const formData = new FormData(form);

    // Perform an AJAX request to update the date
    // You can use the 'fetch' API or any other library like Axios

    // Example using fetch:
    const url = form.action;
    fetch(url, {
      method: "PATCH",
      body: formData
    })
      .then(response => response.json())
      .then(data => {
        // Handle the response as needed
        console.log("Date updated successfully", data);
        this.formTarget.classList.add("hidden-form");
      })
      .catch(error => {
        // Handle the error
        console.error("Error updating date", error);
      });
  }
}

