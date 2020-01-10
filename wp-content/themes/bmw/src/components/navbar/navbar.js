import "./navbar.scss";

$(".search").on("click", function(e) {
  e.preventDefault();
  const width = parseInt($(".icons").width());
  $(".box-search")
    .toggle()
    .css({
      right: width - 10 + "px"
    });
});
