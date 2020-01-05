<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h3>게시물 ${dto.id}번 상세 내용</h3>
<a href="bbsUpdate?id=${dto.id}">수정</a> |
<a href="bbsDelete?id=${dto.id}">삭제</a> 
<hr color="green">
<body>
	<table border="1">
		<tr align="center">
			<td width="100" bgcolor="yellow">아이디</td>
			<td width="200">${dto.id}</td>
		
		</tr>
		
		<tr align="center">
			<td width="100" bgcolor="green">제목</td>
			<td width="200">${dto.title}</td>
		
		</tr>
		
		<tr align="center">
			<td width="100">내용</td>
			<td width="200">${dto.content}</td>
		
		</tr>

		<tr align="center">
			<td width="100" bgcolor="blue">작성자</td>
			<td width="200">${dto.writer}</td>
		
		</tr>

	</table>
</body>
</html>