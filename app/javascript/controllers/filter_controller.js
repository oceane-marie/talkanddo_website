import { Controller } from "stimulus"

console.log('Hello')

export default class extends Controller {
  static targets = [ "list", "languagecheckbox", "categorycheckbox"];

  connect() {
    console.log('where is stimulus?')
    console.log(this.element)
    console.log(this.languagecheckboxTargets)
    console.log(this.categorycheckboxTargets)
    console.log(this.listTarget)
  }

  sortbylanguage(event) {
    event.preventDefault()
    this.languagecheckboxTargets.forEach(() => {
      const url = `/teachers/?language=${event.target.innerText}`
      // const url = `/teachers/?language=${event.target.value}`
          console.log(event.target.innerText)
          // console.log(event.target.value)
          // console.log(url)
          fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
          })
    })
  }

  sortbycategory(event) {
    event.preventDefault()
    this.categorycheckboxTargets.forEach(() => {
      const url = `/teachers/?category=${event.target.innerText}`
      // const url = `/teachers/?category=${event.target.value}`
          console.log(event.target.innerText)
          // console.log(event.target.value)
          // console.log(url)
          fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
          })
    })
  }
}
