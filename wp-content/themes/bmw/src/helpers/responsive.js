export default class Responsive {
  constructor(options) {
    const defaultOptions = {
      blocks: [],
      images: []
    };
    this.options = Object.assign({}, defaultOptions, options);
  }
  blocks(data) {
    [].forEach.call(this.options.blocks, el => {
      let _this = el;
      let image = _this.getAttribute(`data-image-${data}`);
      if (image !== '') {
        _this.style.backgroundImage = `url('${image}')`;
      }
    });
  }
  images(data) {
    [].forEach.call(this.options.blocks, el => {
      let _this = el;
      let image = _this.getAttribute(`data-image-${data}`);
      if (image !== '') {
        _this.setAttribute('src', image);
      }
    });
  }
}
