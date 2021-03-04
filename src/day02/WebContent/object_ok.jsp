<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객제 request 예제</title>
</head>
<body>
	<table border="1">
	
	<tr>
	<th>이름</th>
	<th>생일</th>
	
	</tr>
	<tr>
	
	<td><%=request.getParameter("name") %></td>
	<td><%=request.getParameter("brithday") %></td>
	
	</tr>
	
	
	</table>

</body>
</html>