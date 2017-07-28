
console.log('poop')

const ajaxChan = ()=> {
	$.ajax('https://newsapi.org/v1/articles?source=techcrunch&apiKey=b3f444e3d71f4344b843ae37c3ba2a19' , {
		type: 'GET',
		success: function(data,status,xhr){
			$('#news-ticker').empty();

			var n = data.articles.length;
			for(i = 0; i < n; i++){
				const article = data.articles[i];
				$('#news-ticker').append(`<div><h3>${article.title}</h3>${article.author}<h4><a href="${article.url}">${article.url}</a></h4></div>`);
			}

		}
	})
}

$(document).ready(function () {
	setInterval(ajaxChan, 1000);
	$('#ajaxBtn').click(function(){
		ajaxChan();
	})

})
