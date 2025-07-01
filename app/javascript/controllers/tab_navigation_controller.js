import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="tab-navigation"
export default class extends Controller {
  tabClick({ target }) {
    const url = new URL(window.location)
    url.searchParams.set('tab', target.dataset.bsTarget.replace('#', ''))
    window.history.replaceState(history.state, "", url)
  }
}
