const $animate = {
  addEvent: (obj, type, fn) => {
    if (obj.attachEvent) {
      obj['e' + type + fn] = fn;
      obj[type + fn] = function() {
        obj['e' + type + fn](window.event);
      };
      obj.attachEvent('on' + type, obj[type + fn]);
    } else {
      obj.addEventListener(type, fn, false);
    }
  },
  getScrollY: (obj, type, fn) => {
    let scrOfY = 0;
    if (typeof window.pageYOffset == 'number') {
      scrOfY = window.pageYOffset;
    } else if (document.body && document.body.scrollTop) {
      scrOfY = document.body.scrollTop;
    }
    return scrOfY;
  },
  getOffset: id => {
    var offsetTrail = document.getElementById(id);
    var offsetLeft = 0;
    var offsetTop = 0;
    while (offsetTrail) {
      offsetLeft += offsetTrail.offsetLeft;
      offsetTop += offsetTrail.offsetTop;
      offsetTrail = offsetTrail.offsetParent;
    }

    return {
      left: offsetLeft,
      top: offsetTop
    };
  },

  init: (el, top) => {
    $animate.addEvent(window, 'scroll', () => {
      const blockElem = document.querySelector(`#${el}`);
      const scrollY = $animate.getScrollY();
      if (blockElem !== null) {
        const offset = $animate.getOffset(el);
        if (scrollY > offset.top - top) {
          blockElem.classList.add('is-active');
        }
      }
    });
  }
};

export default $animate;
