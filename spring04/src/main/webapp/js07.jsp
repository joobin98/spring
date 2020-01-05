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
			telValue = $("#tel").val()
			$.ajax({
				url: "tel",
				data: {tel : telValue},
				success: function(result){
					$("#d1").html(result)
				}
			})
		})
		
		$("#b2").click(function(){
			telValue2 = $("#tel").val()
			$.ajax({
				url: "tel2",
				data: {tel2 : telValue2},
				success: function(result){
					$("#d1").html(result)
				}
			})
		})
		
		$("#b3").click(function(){
			moneyV = $("#money").val()
			levelV = $("#level").val()
			$.ajax({
				url: "money",
				data: {money : moneyV, level : levelV},
				success: function(result){
					$("#d1").html(result)
				}
			})
		})
	})

</script>
</head>
<body>
인증번호 받을 전화번호 입력: <input type="text" id="tel" placeholder="-없이 입력"><br>
<button id="b1">인증번호 받기(랜덤값)</button>
<button id="b2">인증번호 받기(조건값)</button><br> <!-- 010이면 1111, 011이면 2222, 018이면 3333, 나머지는 4444 -->
결제금액: <input type="text" id="money">
등급입력: <input type="text" id="level">
<button id="b3">결제금액 처리</button>

<hr color="red">
<div id="d1"></div>


</body>
</html>