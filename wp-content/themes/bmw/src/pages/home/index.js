import "./index.scss";
import "slick-carousel";
import utils from "../../helpers/utils";

utils.initHeight();

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
  arrows: false,
  infinite: false,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1.3,
        slidesToScroll: 1
      }
    }
  ]
});

$(".tabs .tab-item").map((key, val) => {
  const list = $(val).find("li");
  let total = 0;
  list.map((k, v) => {
    total += 280.25;
  });
  total += 10 * list.length;
  $(val)
    .find(".lists")
    .css("width", total + "px");
});
