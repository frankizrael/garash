import "./index.scss";
$(function() {
  $(".sectionSearch").on("click", "a#btn-more", function(e) {
    e.preventDefault();
    const _this = $(this);
    $(".sectionSearch .list li").addClass("show");
    _this.hide();
  });
});
