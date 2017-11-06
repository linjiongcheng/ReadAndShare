$(document).ready(function() {
	
	$("#goToSetting").click(function() {
		$("#personalInfo").css("display", "");
		$("#modifyPassword").css("display", "none");
	  	$("#modifyPhoto").css("display", "none");
	  	$(this).addClass("disabled");
	  	$("#goToPassword").removeClass("disabled");
	})

	$("#goToPassword").click(function() {
		$("#modifyPassword").css("display", "");
		$("#personalInfo").css("display", "none");
	  	$("#modifyPhoto").css("display", "none");
	  	$(this).addClass("disabled");
	  	$("#goToSetting").removeClass("disabled");
	});

	$("#goToPhoto").click(function() {
		$("#modifyPhoto").css("display", "");
		$("#personalInfo").css("display", "none");
		$("#modifyPassword").css("display", "none");
		$("#goToSetting").removeClass("disabled");
	  	$("#goToPassword").removeClass("disabled");
	})

})