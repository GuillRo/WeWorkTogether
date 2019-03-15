import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initUpdateNavbarHomeOnScroll } from '../components/navbarhome';
import { showCalendar } from '../components/showcalendar';
// import { hideCalendar } from '../components/hidecalendar';
import { changeTab} from '../components/tabs'

initUpdateNavbarOnScroll();
initUpdateNavbarHomeOnScroll();
showCalendar();
changeTab();
