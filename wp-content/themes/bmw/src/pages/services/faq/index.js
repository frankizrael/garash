import "../services.scss";
import "./index.scss";

$(".services .list").on("click", ".title", function(e) {
  e.preventDefault();
  const _this = $(this);
  _this
    .parent()
    .find(".title")
    .toggleClass("active");

    _this
    .parent()
    .find("div")
    .slideToggle();
});
