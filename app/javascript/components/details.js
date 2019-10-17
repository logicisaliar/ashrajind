const details = document.querySelectorAll(".detail-text");

details.forEach(detail => {
  detail.addEventListener('click', () => {
    detail.childNodes[1].childNodes[3].classList.toggle("hidden")
    detail.classList.toggle("detail")
  })
})
