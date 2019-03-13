const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 80) {
        navbar.classList.add('navbar-wagon-scroll');
      } else {
        navbar.classList.remove('navbar-wagon-scroll');
      }
    });
  }
};

console.log("hello from navbar.js");

export { initUpdateNavbarOnScroll };
