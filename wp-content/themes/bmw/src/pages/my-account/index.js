import "./index.scss";
$("#loginForm").on("submit", function(e) {
  e.preventDefault();

  var $form = $(this);
  var data = {
    action: "login_check",
    username: $form.find("#username").val(),
    password: $form.find("#password").val(),
    rememberme: $form.find("#rememberme").is(":checked") ? true : false,
    security: $form.find("#security").val()
  };

  $.ajax({
    url: ajaxUrl, // your ajax url
    type: "POST",
    dataType: "json",
    data: data,
    beforeSend: function(jqXHR, settings) {
      $(".login-message").html("");
    },
    success: function(data, textStatus, xhr) {
      if (typeof data.message !== "undefined")
        $(".login-message").html(data.message);

      // reload on success
      if (typeof data.success !== "undefined" && data.success === true) {
        // location.reload();
      }
    },
    error: function(jqXHR, textStatus, errorThrown) {
      $(".login-message").html("There was an unexpected error");
    }
  });
});
//modal
$('.btnWhite').on('click',function(){
  let $this = $(this);
  let $input = $this.closest('.formAccount__form__input');
  $('.myModal').removeClass('active');
  $input.find('.myModal').addClass('active');
});
$('.myModal__content__close').on('click',function(){
  $('.myModal').removeClass('active');
});
//changeInput
$('.btnChangeInput').on('click',function(){
  $('.editInput__emisor').toggle();
  $('.editInput__recept').toggle();
  $('.btnChangeInput').toggle();
  $('.btnSave').toggle();
});
$('.formAccount__title .btnWhite').on('click',function(){
  $('.editInput__emisor').toggle();
  $('.editInput__recept').toggle();
  $('.btnChangeInput').toggle();
  $('.btnSave').toggle();
});
//submit
$('.btnSubmit').on('click',function(){
  $('#buttonForm').trigger('click');
});
//validationcheckout billing

//
$('#contractField').on('click',function(){
  $('.contractFieldContent').toggleClass('active');
});

var wid = $(window).width();
if (wid < 1200) {
  $('.woocommerce-MyAccount-flex .x-container .woocommerce-MyAccount-navigation li.active').on('click',function(e){
    e.preventDefault();
    $('.woocommerce-MyAccount-flex').addClass('menuActive');    
  });
  $('.woocommerceCloseMenu').on('click',function(){
    $('.woocommerce-MyAccount-flex').removeClass('menuActive');
  });
  $('.contractFieldContent').addClass('active');
}