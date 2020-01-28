import "./navbar.scss";

$(".navbar .search").on("click", function(e) {
  e.preventDefault();
  $(".navbar .box").toggle();
  if (window.matchMedia("(max-width: 768px)").matches) {
    $(".navbar").addClass("is-active is-search");
    $(".bg").toggle();
  }
});

$(".button-menu").on("click", function(event) {
  event.preventDefault();
});
