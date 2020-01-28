import "./navbar.scss";

$(".search").on("click", function(e) {
  e.preventDefault();
  $(".box").toggle();
});
