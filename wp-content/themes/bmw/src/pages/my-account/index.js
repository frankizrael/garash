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
