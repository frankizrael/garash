import "./index.scss";

import "slick-carousel";

$(".sliderHome .slider").slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  dots: true,
  arrows: false
});

$(".sectionProducts .products").slick({
  slidesToShow: 4,
  slidesToScroll: 4,
  dots: true,
  arrows: false
});

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
