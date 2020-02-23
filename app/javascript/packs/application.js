import { details } from '../components/details';
import { sections } from '../components/section';
import { uses } from '../components/uses';
import "bootstrap";

const leg = document.querySelectorAll("legend");
window.addEventListener('scroll', function(e) {
  console.log(leg);
});


uses();
sections();
details();
