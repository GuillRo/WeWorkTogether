import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initUpdateNavbarHomeOnScroll } from '../components/navbarhome';
import { showCalendar } from '../components/showcalendar';
import { mapAction } from '../components/map';
// import { hideCalendar } from '../components/hidecalendar';
import { changeTab} from '../components/tabs'
import { loadDynamicBannerText } from '../components/banner';

loadDynamicBannerText();
initUpdateNavbarOnScroll();
initUpdateNavbarHomeOnScroll();
showCalendar();
changeTab();
mapAction();
