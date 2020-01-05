<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h3>게시물 ${bbsDTO.id}번 수정 내용</h3>
<form action="bbsList">
	<hr color="green">
	<body>
		<table border="1">
			<tr align="center">
				<td width="100" bgcolor="yellow">아이디</td>
				<td width="200">${bbsDTO.id}</td>
			
			</tr>
			
			<tr align="center">
				<td width="100" bgcolor="green">제목</td>
				<td width="200">${bbsDTO.title}</td>
			
			</tr>
			
			<tr align="center">
				<td width="100">내용</td>
				<td width="200">${bbsDTO.content}</td>
			
			</tr>
	
			<tr align="center">
				<td width="100" bgcolor="blue">작성자</td>
				<td width="200">${bbsDTO.writer}</td>
			
			</tr>
	
		</table>
	<button type="submit">게시판 목록으로 돌아가기</button>
	</form>
</body>
</html>