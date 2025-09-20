// app/javascript/controllers/password_visibility_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["input"]

    toggle(event) {
        const visible = event.currentTarget.checked
        this.inputTarget.type = visible ? "text" : "password"
    }
}