<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<style type="text/css">
li {
	list-style: none;
	float: left;
	padding: 10px; /* li의 안쪽 여백 */

}

li:nth-child(2n) { /* 짝수인 2,4번째 li */
	background: blue;
	
}

li:nth-child(2n -1) { /* 홀수인 1,3번째 li */
	background: lime;
	
}
/* 클래스 이름 선택은 .클래스이름 */
.c1{
	color: red;
}

/* unique 한 것을 선택할 때 id를 사용.*/
/* id를 선택할 때는 #아이디명 */
#i1{
	border: 2px solid green;
}
</style>
</head>
<body>
네이버 사전 리스트<br>
<ul>
	<li>영어사전</li>
	<li class="c1">한국어사전</li>
	<li class="c1">영한사전</li>
	<li id="i1">스페인어사전</li>
</ul>
</body>
</html>