import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const title = document.getElementById('title-main')
  if (title){
    new Typed('#title-main', {
      strings: ["Creative workspaces", "Unique workspaces"],
      typeSpeed: 100,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
