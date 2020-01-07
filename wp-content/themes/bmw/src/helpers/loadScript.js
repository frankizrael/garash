export default function loadScript(url, params, callback) {
  document.getElementById(
    'formVisa'
  ).innerHTML = `<form id="formScript"  action="/wp-admin/admin-post.php?action=visanet_charge&purchaseNumber=${params.purchaseNumber}" method="post">
  </form>`;

  var script = document.createElement('script');
  script.type = 'text/javascript';
  if (script.readyState) {
    //IE
    script.onreadystatechange = function() {
      if (script.readyState == 'loaded' || script.readyState == 'complete') {
        script.onreadystatechange = null;
        callback();
      }
    };
  } else {
    //Others
    script.onload = function() {
      callback();
    };
  }

  script.src = url;
  script.setAttribute('data-merchantlogo', siteUrl+ '/wp-content/themes/inchcape/uploads/logo.png');
  script.setAttribute('data-sessiontoken', params.sessionKey);
  script.setAttribute('data-channel', 'web');
  script.setAttribute('data-merchantid', '115015006');
  script.setAttribute('data-purchasenumber', params.purchaseNumber);
  script.setAttribute('data-amount', AMOUNT);
  script.setAttribute('data-timeouturl', siteUrl);
  document.getElementById('formScript').appendChild(script);
}
