import "./index.scss";
import "slick-carousel";

$(".related.products ul.products").slick({
  slidesToShow: 4,
  slidesToScroll: 4,
  dots: true,
  arrows: false,
  infinite: false,
  appendDots: ".related.products .x-dots",
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

$(function($) {
  $(".sidebar .widget").on("click", ".widget-title", function(e) {
    e.preventDefault();
    const _this = $(this);
    _this
      .parent()
      .find(".product-categories")
      .slideToggle();
    _this
      .parent()
      .find("form")
      .slideToggle();
    _this
      .parent()
      .find(".widget-title")
      .toggleClass("active");
  });

  $(".singleProduct").on("click", ".description-store", function(e) {
    e.preventDefault();
    const _this = $(this);
    _this.toggleClass("active");
    _this
      .parent()
      .find(".woocommerce-product-details__short-description")
      .slideToggle();
  });

  $(".singleProduct").on("click", ".btnQuantity", function(e) {
    e.preventDefault();
    const _this = $(this);
    const symbol = _this.data("symbol");
    const input = $(".singleProduct .quantity input");
    const currentQuantity = parseInt(input.val());
    let quantity = currentQuantity;

    if (symbol === "+") {
      quantity++;
    }

    if (symbol === "-") {
      if (quantity < 2) {
        quantity = 1;
      } else {
        quantity--;
      }
    }
    input.val(quantity);
  });
});

$(".button-filter").on("click", function(e) {
  e.preventDefault();
  $(".sidebar").toggleClass("opened");
  $(".navbar").toggleClass("index");
});

$(".button-close").on("click", function(e) {
  e.preventDefault();
  $(".sidebar").toggleClass("opened");
  $(".navbar").toggleClass("index");
});

$(".SectionOffers .list").slick({
  slidesToShow: 2,
  slidesToScroll: 1,
  dots: true,
  arrows: false,
  appendDots: ".SectionOffers .x-pagination",
  infinite: false,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true
      }
    }
  ]
});

document.addEventListener(
  "DOMContentLoaded",
  () => {
    $(".woocommerce-product-gallery .flex-control-nav").slick({
      slidesToShow: 4,
      slidesToScroll: 4,
      dots: false,
      arrows: true,
      vertical: true,
      responsive: [
        {
          breakpoint: 768,
          settings: {
            vertical: false,
            slidesToShow: 3,
            slidesToScroll: 3
          }
        }
      ]
    });
  },
  false
);
