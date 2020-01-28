import "./navbar.scss";

$(".navbar .search").on("click", function(e) {
  e.preventDefault();
  $(".navbar .box").toggle();
});
