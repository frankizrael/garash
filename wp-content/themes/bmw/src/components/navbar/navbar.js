import './navbar.scss';
import { TweenMax } from 'gsap';

const bar_menu = document.querySelector('.fixed-bar__menu');
const bar__button = document.querySelector('.fixed-bar__button');
const MainMenu = {
  OPEN: 'OPEN',
  CLOSED: 'CLOSED'
};

const getWidthBarMenu = () => {
  return -(window.innerWidth - 400);
};
const init = () => {
  $(bar_menu).css({
    '-webkit-transform' : `matrix(1, 0, 0, 1, ${getWidthBarMenu()}, 0)`,
    '-moz-transform'    : `matrix(1, 0, 0, 1, ${getWidthBarMenu()}, 0)`,
    '-ms-transform'     : `matrix(1, 0, 0, 1, ${getWidthBarMenu()}, 0)`,
    '-o-transform'      : `matrix(1, 0, 0, 1, ${getWidthBarMenu()}, 0)`,
    'transform'         : `matrix(1, 0, 0, 1, ${getWidthBarMenu()}, 0)`,
  });
};

init();

$(window).resize(function() {
  init();
});


var _state = MainMenu.CLOSED;

const toggleState = () => {
  if (_state == MainMenu.OPEN) {
    _state = MainMenu.CLOSED;
  } else {
    _state = MainMenu.OPEN;
  }
  TweenMax.to(bar__button, 0.3, {
    x: _state == MainMenu.OPEN ? -42 : 0,
    ease: Quart.easeOut,
    onComplete: onCompleted
  });
};

$('.fixed-bar__button').on('click', e => {
  e.preventDefault();
  toggleState();
});

const onCompleted = () => {
  var active = 'active';
  if (_state == MainMenu.OPEN) {
    TweenMax.to(bar_menu, 0.6, {
      x: 42,
      roundProps: ['x'],
      ease: Quart.easeOut
    });
    TweenMax.to(bar__button, 0.6, {
      x: 0,
      className: '+=' + active,
      ease: Quart.easeOut
    });
  } else {
    TweenMax.to(bar__button, 0.6, {
      x: -42,
      ease: Quart.easeOut,
      onComplete: () => {
        TweenMax.to(bar__button, 5, { className: '-=' + active });
      }
    });
    TweenMax.to(bar_menu, 0.6, {
      x: getWidthBarMenu(),
      roundProps: ['x'],
      ease: Quart.easeOut,
      onComplete: () => {
        TweenMax.to(bar__button, 0.6, {
          x: 0,
          className: '-=' + active,
          ease: Quart.easeOut
        });
      }
    });
  }
};
