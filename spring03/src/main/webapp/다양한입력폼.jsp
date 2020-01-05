<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out2.css">
<style type="text/css">
span{
 color: red;
 border: 10px solid lime;
}

</style>
</head>
<body>
	<form action="multi">
	<h1><span>회원가입</span> 화면입니다.</h1>
	<hr color="red">
	아이디: <input type="text" name="id"><br>
	비밀번호: <input type="text" name="pw"><br>
	연락처: <select name="tel"><br>
		<option value="sk telecom">SKT</option>
		<option value="kt telecom">KT</option>
		<option value="lg telecom">LG</option>
		<option value="ect telecom">ECT</option>
	</select>
	<select name="no1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="017">017</option>
		<option value="018">018</option>
	</select>
	<input type="text" name="no2" placeholder="0000-0000">
	성별: <input type="radio" value="man" name="gender">남자
	<input type="radio" value="woman" name="gender">여자
	<br>
	취미 : <input type="checkbox" value="run" name="hobby">달리기
	 <input type="checkbox" value="swim" name="hobby">수영
	 <input type="checkbox" value="sing" name="hobby">노래부르기
	 <input type="checkbox" value="dance" name="hobby">춤추기
	 <br>
	
	하고 싶은 말: <textarea rows="5" cols="30">here</textarea>
	<br>
	<button type="submit">회원가입 처리</button>
	
	</form>
</body>
</html>