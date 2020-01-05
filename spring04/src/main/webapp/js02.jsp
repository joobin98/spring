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
		target = "12345"
		$("#b1").click(function(){
			//입력한 값을 가지고옴
			num = $("#num").val()
			//target과 입력한 값이 동일한지 체크
			if(num == target){
				alert("정답!")
			}else{
				alert("오답")
			}
			
		})
	
	})

</script>
</head>
<body>
생각하고 있는 정답입력: <input type="text" id="num">
<button id="b1">정답확인</button>
</body>
</html>