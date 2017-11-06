$(function(){
	//点赞like的点击事件
	$("#like").click(function(){
		if($('#like').attr('class')=='glyphicon glyphicon-heart-empty'){
			$('#like').attr('class','glyphicon glyphicon-heart');
		}
		else{
			$('#like').attr('class','glyphicon glyphicon-heart-empty');
		}
	});

	$("#like1").click(function(){
		if($('#like1').attr('class')=='glyphicon glyphicon-heart-empty'){
			$('#like1').attr('class','glyphicon glyphicon-heart');
		}
		else{
			$('#like1').attr('class','glyphicon glyphicon-heart-empty');
		}
	});

	$("#like2").click(function(){
		if($('#like2').attr('class')=='glyphicon glyphicon-heart-empty'){
			$('#like2').attr('class','glyphicon glyphicon-heart');
		}
		else{
			$('#like2').attr('class','glyphicon glyphicon-heart-empty');
		}
	});

})