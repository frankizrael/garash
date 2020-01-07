import './jsx-tabs.helper.scss';

export class JsxTabs {
  constructor(selector, callback) {
    this.container = document.querySelector(`[data-jsx-tabs="${selector}"]`);
    this.nav = document.querySelectorAll(
      `[data-jsx-tabs="${selector}"] .nav-tabs a`
    );
    this.contents = document.querySelectorAll(
      `[data-jsx-tabs="${selector}"] [data-tab-content]`
    );
    this.anchors = [];
    this.activeElement = null;
    this.callback = callback;
    this.init();
  }

  init() {
    [].forEach.call(this.nav, element => {
      let _href =
        element.getAttribute('href') || element.getAttribute('data-tab-href');
      this.anchors.push(_href);

      element.addEventListener('click', e => {
        e.preventDefault();

        let _anchor =
          element.getAttribute('href') || element.getAttribute('data-tab-href');

        if (document.querySelector(`[data-tab-content="${_anchor}"]`)) {
          [].forEach.call(this.nav, nav => {
            if (nav.classList.contains('is-active')) {
              nav.classList.remove('is-active');
            }
          });

          [].forEach.call(this.contents, content => {
            if (content.classList.contains('is-active')) {
              content.classList.remove('is-active');
            }
          });

          document
            .querySelector(`[data-tab-content="${_anchor}"]`)
            .classList.add('is-active');

          this.activeElement = _anchor;
        }

        if (!e.target.classList.contains('is-active')) {
          e.target.classList.add('is-active');
        }

        if (typeof this.callback !== 'undefined') {
          let _activeElement = this.activeElement;
          this.callback(_activeElement);
        }
      });
    });
  }
}
