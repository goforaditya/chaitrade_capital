import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["palette", "canvas", "code"]

  connect() {
    Sortable.create(this.paletteTarget, {
      group: { name: "blocks", pull: "clone", put: false },
      sort: false
    })
    Sortable.create(this.canvasTarget, {
      group: "blocks",
      animation: 150,
      onAdd: () => this.renderCode()
    })
  }

  renderCode() {
    const steps = Array.from(this.canvasTarget.children).map(el => el.dataset.type)
    const python = [
      "import pandas as pd",
      "df = pd.DataFrame()  # placeholder",
      ...steps.map(s => this.lookupCode(s)),
      "print('Strategy complete')"
    ].join("\n")
    this.codeTarget.textContent = python
  }

  lookupCode(type) {
    switch (type) {
      case "fetch": return "df = fetch_price('AAPL')"
      case "ma":    return "df['ma20'] = df.close.rolling(20).mean()"
      case "rsi":   return "df = add_rsi(df)"
      case "buy":   return "if df.close.iloc[-1] > df.ma20.iloc[-1]: buy()"
      default:      return "# unknown block"
    }
  }
}
