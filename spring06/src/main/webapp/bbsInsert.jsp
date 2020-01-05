<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h3>게시물 작성하기</h3>
<hr color="green">
<body>
	<form action="insert2">
	<table border="1">
		
		<tr align="center">
			<td width="100" bgcolor="green">제목</td>
			<td width="200"><input type="text" name="title"></td>
		
		</tr>
		
		<tr align="center">
			<td width="100">내용</td>
			<td width="200"><input type="text" name="content"></td>
		
		</tr>

		<tr align="center">
			<td width="100" bgcolor="blue">작성자</td>
			<td width="200"><input type="text" name="writer" value="${id}" readonly="readonly"></td>
		
		</tr>

	</table>
	<button type="submit">입력한 내용 서버로 전송</button>
	</form>
	
</body>
</html>