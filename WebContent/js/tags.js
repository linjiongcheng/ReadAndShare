$(document).ready(function() {
	
	$(".btn").click(function() {
		if ($(this).css("background-color") == "rgb(255, 255, 0)"){
			$(this).css("background-color","white");
		}else{
			$(this).css("background-color","yellow");
		}
			
	});
	
	$("#search").click(function(){
		$("#search").css("background-color","white");
	});

	$("#finishSelect").click(function(){
		$("#finishSelect").css("background-color","gray");
	});
})