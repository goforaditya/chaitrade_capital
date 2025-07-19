import { Application } from "@hotwired/stimulus"
const application = Application.start()

// Eager-load local controllers
import LobbyController      from "./lobby_controller"
import NewsTickerController from "./news_ticker_controller"
import BuilderController    from "./builder_controller"

application.register("lobby",       LobbyController)
application.register("news-ticker", NewsTickerController)
application.register("builder",     BuilderController)
