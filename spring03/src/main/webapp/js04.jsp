<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function call1(){
		alert("1번 호출됨")
		console.log("1번 호출됨")
	}
	function call2(){
		alert("2번 호출됨")
		console.log("2번 호출됨")
	}
	
	function call3(){
		w1 = prompt("단어 입력1")
		w2 = prompt("단어 입력2")
		alert(w1+w2)
	}
	
	function call4(){
		w1 = prompt("숫자 입력1")
		w2 = prompt("숫자 입력2")
		
		ww1 = parseInt(w1)
		ww2 = parseInt(w2)
		alert(ww1+ww2)
	}
	/* call1() */
	/*3번 함수는 두 단어를 입력받아서 하나로 프린트*/
	/*4번 함수는 두 숫자를 입력받아서 더해서 프린트*/
</script>
</head>
<body>
<button type="button" onclick="call1()">1번함수 호출</button>
<button type="button" onclick="call2()">2번함수 호출</button>
<button type="button" onclick="call3()">3번함수 호출</button>
<button type="button" onclick="call4()">4번함수 호출</button>
</body>
</html>