import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list"]
  connect() {
    // CSS animation defined in tailwind.config.js
  }
}
