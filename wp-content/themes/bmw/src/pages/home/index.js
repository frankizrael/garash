import "swiper/dist/css/swiper.min.css";
import Swiper from "swiper";
import "./index.scss";

new Swiper('[data-swiper-id="swiper-home"]', {
  pagination: ".sliderHome .swiper-pagination",
  slidesPerView: "auto",
  paginationClickable: true
  // mousewheelControl: true,
  // parallax: true,
  // keyboardControl: true,
});
