import "@hotwired/turbo-rails"
import { Application } from "@hotwired/stimulus"
import consumer from "./channels/consumer"

import "./controllers"

window.Stimulus = Application.start()
window.consumer  = consumer
