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
