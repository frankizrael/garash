import "./index.scss";

$(".sidebar .widget").on("click", ".widget-title", function(
  e
) {
  e.preventDefault();
  const _this = $(this);
  _this.parent().find(".product-categories").slideToggle();
  _this.parent().find("form").slideToggle();
  _this.parent().find(".widget-title").toggleClass("active");
});
