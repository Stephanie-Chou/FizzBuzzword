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

	function getAllElementsWithAttribute(attribute)
	{
	  var matchingElements = [];
	  var allElements = document.getElementsByTagName('*');
	  for (var i = 0, n = allElements.length; i < n; i++)
	  {
	    if (allElements[i].getAttribute(attribute))
	    {
	      // Element exists with attribute. Add to array.
	      matchingElements.push(allElements[i]);
	    }
	  }
	  return matchingElements;
	}

	$('span').on("mouseover", function(){
		var topDest = this.offsetTop;
		var leftDest = this.offsetLeft;
		var height = this.offsetHeight+2;
		$el = $('<span class="tip label">'+this.attributes["title"].value+'</span>');
		$el.css('top', topDest-height);
		$el.css('left', leftDest);
		if (this.attributes["data-toggle"].value === "tooltip"){
			$(this).append($el);
		}
	});

	$('span').on("mouseout", function(){
		if (this.attributes["data-toggle"].value === "tooltip"){
			$(this).children().remove();
		}
	});
	
	
	// $('li').on("click",function(e){
	// 	console.log(this);
	// 	console.log(e.target)
	// })
});