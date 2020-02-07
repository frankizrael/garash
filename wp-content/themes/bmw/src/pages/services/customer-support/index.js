import "../services.scss";
import "./index.scss";
import validate from 'jquery-validation';

let validator = $("#form-customer-support").validate({
  errorPlacement: (error, element) => {
    $(element)
      .parent()
      .append(error);
  },
  rules: {
    name: "required",
    lastname: "required",
    phone: "required",
    email: {
      required: true,
      email: true
    },
    phone: "required",
    message: "required"
  },
  messages: {
    name: "Por favor ingresa tu nombre.",
    lastname: "Por favor ingresa tus apellidos.",
    phone: "Por favor ingresa tu teléfono.",
    email: "Por favor ingresa un correo válido.",
    phone: "Por favor, ingresa un número de teléfono.",
    message: "Por favor, ingresa un comentario."
  },
  submitHandler: form => {
    $.ajax({
      url: "",
      method: "POST",
      data: "action=actionContact&" + $(form).serialize()
    })
      .done((data, xhrStatus, xhr) => {})
      .fail(xhr => {
        validator.showErrors(err);
      });
  }
});
