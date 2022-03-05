import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['input', 'list']

  connect() {
    this.fetchMovies("harry potter") // on 1st page load
  }

  search(event) {
    event.preventDefault()
    this.listTarget.innerHTML = ""
    this.fetchMovies(this.inputTarget.value)
  }

  insertMovies(data) {
    data.Search.forEach((result) => {
      const movieTag = `<li class="list-group-item border-0">
        <img src="${result.Poster}" alt="" width="100">
      </li>`
      this.listTarget.insertAdjacentHTML("beforeend", movieTag)
    })
  }

  fetchMovies(query) {
    fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
      .then(response => response.json())
      .then(data => this.insertMovies(data))
  }

}
