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

$(window).scroll(function() {
  const top = $(window).scrollTop();

  if (top > 300) {
    if (!$(".navbar").hasClass("is-active")) {
      $(".navbar").addClass("is-active");
    }
  }
});
