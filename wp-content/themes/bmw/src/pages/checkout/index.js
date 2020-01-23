import "./index.scss";

$(".woocommerce-shipping-fields").on(
  "change",
  "#ship-to-different-address-checkbox",
  () => {
    const _elem = $(".woocommerce-form__label");
    _elem.toggleClass("active");
  }
);
