$(document).ready(function () {

  $('[data-toggle="offcanvas"]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });

  // actual use
  // loadContent("recBooks");

  // $('.tag').click(function() {
  // 	$(this).parent().children().removeClass("active");
  // 	$(this).addClass("active");
  // 	loadContent($(this).attr("title"));
  // 	$("#content").children().last().prev().remove();

  // });

  $('.tag').click(function() {
  	$(this).parent().children().removeClass("active");
  	$(this).addClass("active");
  	if ($(this).attr("title") == "recBooks") {
	  	$("#recBooks").css("display", "");
	  	$("#ranking").css("display", "none");
  	} else {
	  	$("#ranking").css("display", "");
	  	$("#recBooks").css("display", "none");
  	}
  })

});

function loadContent(tag) {
	$.ajax({
		url: "res/frame/" + tag + ".html",
		type: "GET",
		async: false,
		success: function(result) {
			$("#content").append(result);
		}
	});
}