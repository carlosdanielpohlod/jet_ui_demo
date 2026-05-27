import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["success", "error", "warning"]

  showSuccess() { this.show(this.successTarget) }
  showError()   { this.show(this.errorTarget) }
  showWarning() { this.show(this.warningTarget) }

  show(target) {
    [this.successTarget, this.errorTarget, this.warningTarget].forEach(t => t.hidden = true)
    target.hidden = false
  }
}
