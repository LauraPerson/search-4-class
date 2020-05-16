const transparentScroll = () => {
  const banner = document.querySelector(".banner-home")
  const button = document.querySelector(".btn-sign-outline")
  if (banner) {
    const navbar = document.querySelector(".navbar")
    button.classList.add("btn-sign-outline-white");
    navbar.classList.add("fixed-top");
    navbar.classList.add("navbar-transparent");
    window.addEventListener('scroll', () => {
      if (window.scrollY > 420) {
        button.classList.remove("btn-sign-outline-white");
        navbar.classList.remove("navbar-transparent");
      } else {
        navbar.classList.add("navbar-transparent");
        button.classList.add("btn-sign-outline-white");
      }
    })
  };
};

export { transparentScroll };
