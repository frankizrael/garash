import "./scss/common.scss";
import "./app.scss";
import "./components/components";

if (document.querySelector("input, textarea")) {
  let inputs = document.querySelectorAll("input, textarea");
  [].forEach.call(inputs, input => {
    input.addEventListener("focus", applyActive);
    input.addEventListener("focusout", applyActive);
  });
}

function applyActive() {
  this.value != ""
    ? this.classList.add("is-active")
    : this.classList.remove("is-active");
}

window.onload = function() {
  const actWidth = $(".tabs ul")
    .find(".active")
    .width();
  const actPosition = $(".tabs ul .active").position();
  $(".tabs .line").css({ left: +actPosition.left, width: actWidth });
};

$(".tabs ul li a").click(function() {
  var position = $(this)
    .parent()
    .position();
  var width = $(this)
    .parent()
    .width();
  $(".tabs .line").css({ left: +position.left, width: width });
});
