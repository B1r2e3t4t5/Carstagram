import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="last-message-sent"
export default class extends Controller {

  static targets = ["lastmessage"]

  connect() {
    console.log("test1")
  }

  showLastMessage() {
   console.log("test2")
  }
}
