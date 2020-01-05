<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h3>게시물 ${dto.id}번 상세 내용 수정</h3>
<a href="bbsSelect?id=${dto.id}">검색</a> |
<a href="bbsDelete?id=${dto.id}">삭제</a> 
<hr color="green">
<body>
	<form action="bbsUpdate2">
	<table border="1">
		<tr align="center">
			<td width="100" bgcolor="yellow">아이디</td>
			<td width="200">
			<input type="text" name="id" value="${dto.id}" readonly="readonly"></td> <!-- 고정하기 -->
		
		</tr>
		
		<tr align="center">
			<td width="100" bgcolor="green">제목</td>
			<td width="200"><input type="text" name="title" value="${dto.title}"></td>
		
		</tr>
		
		<tr align="center">
			<td width="100">내용</td>
			<td width="200"><input type="text" name="content" value="${dto.content}"></td>
		
		</tr>

		<tr align="center">
			<td width="100" bgcolor="blue">작성자</td>
			<td width="200"><input type="text" name="writer" value="${dto.writer}" readonly="readonly"></td>
		
		</tr>

	</table>
	<button type="submit">수정완료</button>
	</form>
	
</body>
</html>