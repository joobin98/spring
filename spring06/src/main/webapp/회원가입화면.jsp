<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="memberInsert">
아이디: <input type="text" name="id"><br>
비밀번호: <input type="text" name="pw"><br>
이름: <input type="text" name="name"><br>
전화번호: <input type="text" name="tel"><br>

<button type="submit">서버로 전송</button>
</form>

<a href="회원탈퇴.jsp">회원탈퇴하기</a>

</body>
</html>