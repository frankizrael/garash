import "./index.scss";

document.addEventListener(
  "DOMContentLoaded",
  function() {
    $(".sectionCheckout #order_review_heading").remove();
    $(".woocommerce-checkout-review-order").prepend(
      "<h3>Detalle de tu compra</h3>"
    );
  },
  false
);

$(".woocommerce-shipping-fields").on(
  "change",
  "#ship-to-different-address-checkbox",
  () => {
    const _elem = $(".woocommerce-form__label");
    _elem.toggleClass("active");
  }
);
