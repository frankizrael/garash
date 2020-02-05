const utils = {
  initHeight() {
    const main = document.querySelector("#home");
    if (main) {
      main.style.height = window.innerHeight - 50 + "px";
    }
  }
};

export default utils;
