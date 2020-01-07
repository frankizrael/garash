import './scss/common.scss';
import './app.scss';
import './components/components';

if (document.querySelector('input, textarea')) {
  let inputs = document.querySelectorAll('input, textarea');
  [].forEach.call(inputs, input => {
    input.addEventListener('focus', applyActive);
    input.addEventListener('focusout', applyActive);
  });
}

function applyActive() {
  this.value != ''
    ? this.classList.add('is-active')
    : this.classList.remove('is-active');
}
