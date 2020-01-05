<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">

	$(function() {
		$("#b1").click(function(){
			//이미지 추가
			img = "<img src=resources/img/dog.jpg width=150 height=150>"
			$("#d1").append(img + "<br>")
		})
		
		$("#b2").click(function(){
			//댓글 입력한 것 가지고 옴
			re1 = $("#re1").val()
			//d1에 붙여넣음.
			$("#d1").append(re1 + "<br>")
		})
		
		$("#b3").click(function(){
			//댓글 쓴거 가져옴
			re2 = $("#re2").val()
			//d1에 붙여넣음
			img = "<img src=resources/img/dog.jpg width=50 height=50>"
			$("#d1").append(img + re2 + "<br>")
		})
	})//juery close
</script>
</head>
<body>
<button id="b1">이미지 추가하기</button><br>
댓글입력1: <input type="text" id="re1">
<button id="b2">댓글 추가하기</button><br>

댓글입력2: <input type="text" id="re2">
<button id="b3">댓글 + 이미지 추가하기</button>
<hr color="red">
<div id="d1"></div>

</body>
</html>