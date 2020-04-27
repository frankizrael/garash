import "./index.scss";
let aux = 0;
let aux_answ = '';
$('.soft_encuesta i').on('click',function (){
	let $this = $(this);
	let $item = $this.closest('.item_encuesta');
	$item.find('i').removeClass('active');
	$this.addClass('active');
	let data = $this.attr('data');	
	$item.attr('answ',data);
	aux++;	
	if (aux == $('.item_encuesta').length)	 {
		$('.soft_send').addClass('active');				
	}
});

$('#sendid').on('click',function (){
	for (let i=0;i<$('.item_encuesta').length;i++){
		let crp = '-'+$('.item_encuesta').eq(i).attr('title')+': '+$('.item_encuesta').eq(i).attr('answ')+'</br>';
		aux_answ = aux_answ+crp;
	}	
	$('.soft_send').find('textarea').val(aux_answ);
	$('.soft_send').find('button').trigger('click');
});

