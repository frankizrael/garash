import "./navbar.scss";

$(".navbar .search, .menuMobile .search").on("click", function(e) {
  e.preventDefault();
  $(".navbar .box").toggle();
  if (window.matchMedia("(max-width: 768px)").matches) {
    $(".navbar").addClass("is-active is-search");
    $(".bg").toggle();
    $(".menuMobile").toggleClass("index");
  }
});

$(".button-menu").on("click", function(event) {
  event.preventDefault();
  $(".menuMobile").toggle();
});

$(".button-close").on("click", function(e) {
  $(".menuMobile").hide();
});

$(".menuMobile__content ul li.menu-item:not(.page_item) a").map((key, res) => {
  $(res).attr("href", "javascript:void(0)");
});

$(".menuMobile__content ul li.menu-item:not(.page_item) a").on(
  "click",
  function(e) {
    e.preventDefault();
    const _this = $(this);
    _this
      .parent()
      .find(".sub-menu")
      .toggle();
  }
);
