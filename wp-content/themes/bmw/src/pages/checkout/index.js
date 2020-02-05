import "./index.scss";

$(function() {
  const hideFields = (status = false) => {
    const value = status ? "" : "-";
    $("#billing_razon_social_field")
      .toggle()
      .find("#billing_razon_social")
      .val(value);

    $("#billing_ruc_field")
      .toggle()
      .find("#billing_ruc")
      .val(value);

    $("#billing_fiscal_field")
      .toggle()
      .find("#billing_fiscal")
      .val(value);
  };
  hideFields();

  const html = `
  <div>
    <div class="title-fact">Facturación</div>
    <h3 id="bill-to-data-company">
        <label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
          <input id="ship-to-data-company-checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" type="checkbox" name="ship_to_data_company" value="1">
          <div class="group">
            <div class="check">
              <div class="left">
              </div>
              <div class="right"></div>
            </div>
            <span>Activa esta opción para solicitar factura</span>
          </div>
        </label>
      </h3>
    </div>
  `;

  $("#billing_email_field").append(html);

  /***************************** */
  $("#bill-to-data-company").on(
    "change",
    "#ship-to-data-company-checkbox",
    function() {
      const _this = $(this);
      if (_this.is(":checked")) {
        hideFields(true);
        window.triggerFields();
      } else {
        hideFields(false);
      }
      _this.parent().toggleClass("active");
    }
  );

  /********************* */

  $("#ship-to-different-address").on(
    "change",
    "#ship-to-different-address-checkbox",
    function() {
      const _this = $(this);
      _this.parent().toggleClass("active");
    }
  );

  $(".resumen-order__header .title").on("click", function(e) {
    e.preventDefault();
    $(".bg-resumen").toggleClass("opened");
    $(".resumen-order").toggleClass("opened");
  });
  $(".bg-resumen").on("click", function(e) {
    e.preventDefault();
    $(".bg-resumen").toggleClass("opened");
    $(".resumen-order").toggleClass("opened");
  });
});

window.onload = () => {
  setTimeout(() => {
    const link = $(".tabs ul li a").get(0);
    if (link) {
      link.click();
    }
  }, 1000);
};

$(".tabs").on("click", ".control a", function(e) {
  e.preventDefault();
  const _this = $(this);
  const name = _this.data("name");
  $("#custom_field_name").val(name);
  $(".tabs .tab-item").removeClass("active");
  _this
    .parent()
    .parent()
    .addClass("active");
});
