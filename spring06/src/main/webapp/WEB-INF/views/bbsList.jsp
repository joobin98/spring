<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${id}님 환영합니다.</h3>
<a href="bbsInsert.jsp">글쓰기</a>
<hr>
<table border="1">
	<tr align="center">
		<td width="100" bgcolor="green">아이디</td>
		<td width="200" bgcolor="yellow">제목</td>
		<td width="200" bgcolor="lime">작성자</td>
	
		<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td width="100">${dto.id}</td>
				<td width="200">
				<a href="bbsSelect?id=${dto.id}">${dto.title}</a>
				</td>
				<td width="200">${dto.writer}</td>
			</tr>
		</c:forEach>
	</tr>
</table>
	
</body>
</html>