import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = []

  connect() {
    this.subscription = consumer.subscriptions.create("LobbyChannel", {
      received: data => {
        if (data.type === "news_update") {
          const ul = document.querySelector("[data-news-ticker-target='list']")
          ul.innerHTML = data.items.map(([headline, url]) =>
            `<li class="px-8"><a href="${url}" target="_blank" class="hover:underline">${headline}</a></li>`
          ).join("")
        } else {
          // chat message HTML comes pre-rendered from server
          document.getElementById("chat-scroll").insertAdjacentHTML("afterbegin", data)
        }
      }
    })
  }

  send(event) {
    event.preventDefault()
    const textarea = event.target.querySelector("textarea")
    consumer.subscriptions.subscriptions[0].send({ content: textarea.value })
    textarea.value = ""
  }

  disconnect() { this.subscription.unsubscribe() }
}
