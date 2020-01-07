const utils = {
  getFeatures(arrays, show = true) {
    let html = '';
    arrays.forEach(item => {
      if (show) {
        if (Boolean(item.show)) {
          html += `<li>
              <div class="name">${item.name}</div>
              <div class="number">${item.value}</div>
            </li>`;
        }
      } else {
        html += `<li>
        <div class="name">${item.name}</div>
        <div class="number">${item.value}</div>
      </li>`;
      }
    });
    return html;
  },
  getColors(arrays) {
    let html = '';
    arrays.forEach(item => {
      html += `<li class="tooltip" data-tooltip="${item.name}">
              <div style="background-color:${item.color}"></div>
            </li>`;
    });
    return html;
  },
  getDataSlide(array) {
    const card = document.querySelector('.Card');
    card
      .querySelector('#bookingUrl')
      .setAttribute('href', '/reservar/?id=' + array.id);
    card.querySelector('.title span#title').innerHTML = array.title;
    card.querySelector('.features').innerHTML = utils.getFeatures(
      array.features
    );
    card.querySelector('.colors ul').innerHTML = utils.getColors(array.colors);
    document.querySelector('#dollars').innerHTML = array.dollars;
    document.querySelector('#soles').innerHTML = array.soles;
    card.querySelector('.title-bg').innerHTML = array.model;
    document.querySelector('#image img').setAttribute('src', array.image);
    utils.getDataModal(array);
  },
  getDataModal(array) {
    const modal = document.querySelector('.Modal');
    modal.querySelector('.image img').setAttribute('src', array.secondary_image);
    modal.querySelector('.features').innerHTML = utils.getFeatures(
      array.features,
      false
    );
    modal.querySelector('.title span#title').innerHTML = array.title;
    modal.querySelector('.title-bg').innerHTML = array.model;
    modal.querySelector('span#model').innerHTML = array.model;
    modal
      .querySelector('#bookingUrl')
      .setAttribute('href', '/reservar/?id=' + array.id);


      modal
      .querySelector('.Modal__footer #bookingUrl')
      .setAttribute('href', '/reservar/?id=' + array.id);
      
    modal.querySelector('#download').setAttribute('href', array.download);
  },
  initHeight() {
    const main = document.querySelector('.main');
    if (main) {
      main.style.height = window.innerHeight + 'px';
    }
  }
};

export default utils;
