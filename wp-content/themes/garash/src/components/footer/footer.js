import "./footer.scss";

$(".bar-top").on("click", ".icon", e => {
  e.preventDefault();
  const menu = $(".menu-mobile");
  if (!menu.hasClass("active")) {
    menu.addClass("active");
  } else {
    menu.removeClass("active");
  }
});

$(".menu-mobile").on("click", ".button-close", e => {
  e.preventDefault();
  const menu = $(".menu-mobile");
  if (menu.hasClass("active")) {
    menu.removeClass("active");
  }
});

$(window).on("load", function() {
  $(".menu-mobile").css("display", "block");
});
