const $dom = {
  on: (type, node, fn, capture = false) => {
    if (node) {
      let elements = document.querySelectorAll(node);
      [].forEach.call(elements, function(element) {
        typeof window.event !== 'undefined'
          ? element.attachEvent('on' + type, fn)
          : element.addEventListener(type, fn, capture);
      });
    }
  },
  simulateEvent: (element, eventType, callback = false) => {
    let event = document.createEvent('MouseEvents');
    event.initMouseEvent(`${eventType}`);
    element.dispatchEvent(event);
    if (typeof callback === 'function') callback();
  }
};

export default $dom;
