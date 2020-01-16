import "./index.scss";

$(function($) {
  $(
    ".sectionCart .quantity"
  ).append(`<a class="btnQuantity x-right" href='javascript:void(0)' data-symbol="+">
  <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
 		<path d="M492,236H276V20c0-11.046-8.954-20-20-20c-11.046,0-20,8.954-20,20v216H20c-11.046,0-20,8.954-20,20s8.954,20,20,20h216
			v216c0,11.046,8.954,20,20,20s20-8.954,20-20V276h216c11.046,0,20-8.954,20-20C512,244.954,503.046,236,492,236z"/>
 
</svg>
  </a>`);

  $(
    ".sectionCart .quantity"
  ).prepend(`<a class="btnQuantity x-left" href='javascript:void(0)' data-symbol="-">
   
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
 		<path d="M492,236H20c-11.046,0-20,8.954-20,20c0,11.046,8.954,20,20,20h472c11.046,0,20-8.954,20-20S503.046,236,492,236z"/>

</svg>

  </a>`);

  $(".sectionCart").on("click", ".btnQuantity", function(e) {
    e.preventDefault();

    const _this = $(this);
    const symbol = _this.data("symbol");
    const input = _this.parent().find("input");
    const currentQuantity = parseInt(input.val());
    let quantity = currentQuantity;

    if (symbol === "+") {
      quantity++;
    }

    if (symbol === "-") {
      if (quantity < 2) {
        quantity = 1;
      } else {
        quantity--;
      }
    }
    input.val(quantity);
  });
});
