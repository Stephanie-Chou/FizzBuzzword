$(document).ready(function(){
	console.log("ready");
	$("#submit_btn").on("click", function(e){
		e.preventDefault();
		request = $.get("fizzbuzz", {input: $("#txtArea").val()})
		request.done(function(data){
			console.log(data);
			$("#returnedText").html('<p>'+data+'</p>')
			Style_fizzbuzz();
		})
		
	})
	function Style_fizzbuzz(){
		var fizzbuzzed = $('#returnedText').text().replace(/Buzzword/g,"<span class = 'buzz'>Buzzword</span>").replace(/Fizz/g,"<span class = 'fizz'>Fizz</span>");
		$('#returnedText').html(fizzbuzzed);
	}
	
});