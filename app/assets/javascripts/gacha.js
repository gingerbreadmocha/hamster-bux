console.log('woohooo');

const ajaxChan = ()=> {
	$.ajax('/gacha',{
		type: 'POST',

		success: (data,status,xhr)=>{
			console.log(data);
			$('.results').append(`<div>Your results are: </div><div>${data.mesos} !!</div>`);

		}
	})
}

$(document).ready(function(){
	$('#gacha-button').click( function(){
		console.log('VIENNA SAUSAGES');
		$('.results').empty();
		ajaxChan();
	});
});