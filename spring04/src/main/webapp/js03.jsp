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
		target = "12345" //js02의 변형 >> 숫자를 입력할때마다 결과를 출력(클릭x)
		$("#num").keyup(function(){ //키보드를 눌렀다가 떼는 순간
			//입력한 값을 가지고옴
			num = $("#num").val()
			//target과 입력한 값이 동일한지 체크
			if(num == target){
				//alert("정답!")
				//$("#d1").html("<font color=green>정답</font>")
				$("#d1").append("<font color=green>정답</font><br>")
			}else{
				//$("#d1").html("<font color=red>오답</font>")
				$("#d1").append("<font color=red>오답</font><br>")
			}
			
		})
	
	})

</script>
</head>
<body>
생각하고 있는 정답입력: <input type="text" id="num">
<div id="d1"></div>
</body>
</html>