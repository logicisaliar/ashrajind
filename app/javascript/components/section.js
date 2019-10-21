const sections = document.querySelectorAll(".flavour-title");
const hide = document.querySelectorAll(".flavour-hide");

sections.forEach(section => {
  section.addEventListener('click', () => {
    section.parentNode.childNodes[3].classList.toggle("hidden");
  })
})
