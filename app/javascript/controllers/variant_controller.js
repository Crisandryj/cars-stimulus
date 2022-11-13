import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["type"]
  static classes = ["hide"]
  // 
  // connect() {
  //   this.typeTarget.textContent = "Hello World!"
  // }

  add() {
    event.preventDefault()
    this.typeTarget.classList.toggle(this.hideClass)
  }

}
