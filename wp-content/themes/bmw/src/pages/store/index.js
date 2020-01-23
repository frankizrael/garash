import "./index.scss";
import "slick-carousel";

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

  $(
    ".singleProduct .quantity"
  ).append(`<a class="btnQuantity x-right" href='javascript:void(0)' data-symbol="+">
  <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
 		<path d="M492,236H276V20c0-11.046-8.954-20-20-20c-11.046,0-20,8.954-20,20v216H20c-11.046,0-20,8.954-20,20s8.954,20,20,20h216
			v216c0,11.046,8.954,20,20,20s20-8.954,20-20V276h216c11.046,0,20-8.954,20-20C512,244.954,503.046,236,492,236z"/>
 
</svg>
  </a>`);

  $(
    ".singleProduct .quantity"
  ).prepend(`<a class="btnQuantity x-left" href='javascript:void(0)' data-symbol="-">
   
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
 		<path d="M492,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h472c11.046,0,20-8.954,20-20S503.046,236,492,236z"/>

</svg>

  </a>`);

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

document.addEventListener(
  "DOMContentLoaded",
  () => {
    $(".woocommerce-product-gallery .flex-control-nav").slick({
      slidesToShow: 4,
      slidesToScroll: 4,
      dots: false,
      arrows: true,
      vertical: true
    });
  },
  false
);
