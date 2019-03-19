import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#title-main', {
    strings: ["Creative workspaces", "Unique workspaces"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
