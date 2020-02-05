import "./index.scss";

$(function($) {

  $(".sectionCart").on("click", ".btnQuantity", function(e) {
    e.preventDefault();

    const _this = $(this);
    const symbol = _this.data("symbol");
    const input = _this.parent().find("input");
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
    $('.sectionCart .button[name="update_cart"]').removeAttr('disabled');
    input.val(quantity);
  });
});
