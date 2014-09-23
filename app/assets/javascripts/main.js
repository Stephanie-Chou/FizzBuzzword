$(document).ready(function(){
	console.log("ready");
$("#submit_btn").on("click", function(e){
		e.preventDefault();

		request = $.post("oauth");
		request.done(function(data){
			console.log(data);
			window.open(data, "_blank");
		});

	});
	function Style_fizzbuzz(){
		var fizzbuzzed = $('body').text().replace(/Buzzword/g,"<span class = 'buzz'>Buzzword</span>").replace(/Fizz/g,"<span class = 'fizz'>Fizz</span>");
		$('body').html(fizzbuzzed);
	}
	
	
});
			// var keys = {
		// 	YOUR_API_KEY: '751n3s1mdd0pu7',
		// 	SCOPE: 'r_fullprofile',
		// 	STATE: '1937rbfiek3ubgfk2irRwhETs',
		// 	YOUR_REDIRECT_URI: 'fizzbuzz'
		// };
		// var request = $.post("https://www.linkedin.com/uas/oauth2/authorization?response_type=code&client_id="+keys.YOUR_API_KEY+"&scope="+keys.SCOPE+"&state="+keys.STATE+"&redirect_uri="+keys.YOUR_REDIRECT_URI);


		// request = $.get("fizzbuzz", {input: $("#txtArea").val()})
		// request.done(function(data){
		// 	console.log(data);
		// 	$("#returnedText").html('<p>'+data+'</p>')
		// 	Style_fizzbuzz();
		// })