const uses = document.querySelectorAll(".uses");
const legend = document.querySelectorAll(".legend");
const close = document.querySelectorAll(".close-button");

uses.forEach(use => {
  use.addEventListener('click', () => {
    legend[0].classList.toggle("hidden");
  })
})

close.forEach(c => {
  c.addEventListener('click', () => {
    c.parentNode.classList.toggle("hidden");
  })
})
