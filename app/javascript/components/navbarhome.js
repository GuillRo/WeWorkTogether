const initUpdateNavbarHomeOnScroll = () => {
  const navbarhome = document.querySelector('.navbar-wagon-home');
  if (navbarhome) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 80) {
        navbarhome.classList.add('navbar-wagon-home-scroll');
      } else {
        navbarhome.classList.remove('navbar-wagon-home-scroll');
      }
    });
  }
};

console.log("hello from navbarhome.js");

export { initUpdateNavbarHomeOnScroll };
