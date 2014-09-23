$(document).ready(function(){
	console.log("ready");
$("#submit_btn").on("click", function(e){
		e.preventDefault();

		request = $.post("oauth");
		request.done(function(data){
			console.log(data);
			window.location.replace(data);
		});

	});
	function Style_fizzbuzz(){
		var fizzbuzzed = $('body').text().replace(/Buzzword/g,"<span class = 'buzz'>Buzzword</span>").replace(/Fizz/g,"<span class = 'fizz'>Fizz</span>");
		$('body').html(fizzbuzzed);
	}
	
	
});