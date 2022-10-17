const btn = document.getElementById('btn-search');
const input = document.getElementById('location');


btn.addEventListener(('click'), (event) => {
  event.preventDefault()


  console.log(input.value)

  input.value = "";
})
