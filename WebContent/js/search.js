$(document).ready(function() {
	
	$("#searchButton").click(function() {
		var content = $("#searchContent").val();
		var url = "searchResult?content=" + content;
		window.location.href = url;
	});
	
	$("#searchContent").keydown(function(event) {
		if (event.keyCode == 13) {
			return false;
		}
	})
	
})