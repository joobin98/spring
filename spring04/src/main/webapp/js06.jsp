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
			//id값을 가지고 오세요.
			idValue = $("#id").val()
			console.log("당신이 입력한 아이디는 " + idValue + "입니다.")
			//서버와 통신이 필요함.
			//$.ajax() 사용하면 됨.(server 와 javascript의 통신)
			//ajax에 포함될 내용: url, 전달할 data, 결과처리 
			$.ajax({
				url: "member", //.뒤에 아무거나 써도된다.
				data: {
					id : idValue // 이름 : value
				},
				success: function(result){
					$("#d1").html(result)
				}
			})
			
		})
		
		$("#b2").click(function(){
			adminValue = $("#admin").val() //서버와 통신
			$.ajax({
				url: "admin",
				data: {
					admin : adminValue
				},
				success: function(result){
					$("#d1").html(result)
				}
			})
		})
	})

</script>
</head>
<body>
아이디 입력: <input type="text" id="id"><br>
<button id="b1">아이디 중복 체크</button>
<hr color="red">

관리자모드 입력: <input type="text" id="admin"><br>
<button id="b2">관리자로 로그인</button>
<hr color="red">
<div id="d1"></div>

</body>
</html>