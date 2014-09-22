$(document).ready(function(){
	console.log("ready");
	$("#submit_btn").on("click", function(e){
		e.preventDefault();
		request = $.get("fizzbuzz", {input: $("#txtArea").val()})
		request.done(function(data){
			console.log(data);
			$("#returnedText").html('<p>'+data+'</p>')
		})
		
	})
});