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

