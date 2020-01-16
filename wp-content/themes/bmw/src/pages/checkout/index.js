import "./index.scss";

document.addEventListener(
  "DOMContentLoaded",
  function() {
    $(".woocommerce-additional-fields").remove();
    $(
      ".woocommerce .col2-set .col-2,.woocommerce-page .col2-set .col-2"
    ).remove();

    $(".sectionCheckout #order_review_heading").remove();

    $(".woocommerce-checkout-review-order").prepend(
      "<h3>Detalle de tu compra</h3>"
    );
  },
  false
);
