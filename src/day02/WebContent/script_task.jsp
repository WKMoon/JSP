<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	아래의 모양과 같이 테이블 만들기
	반복문 4개가 필요합니다.
	□
	□□
	□□□
	□□□□
	□□□□□
	□□□□□
	□□□□
	□□□
	□□
	□
-->
	<table>
		<%for(int i=0; i<5; i++){ %>
		<tr>
			<%for(int j=0; j<i+1; j++){ %>
			<td>□</td>

			<%} %>
		</tr>
		<%}%>
		
		<%for(int i=0; i<5; i++){ %>
		<tr>
			<%for(int j=5; j<5; j--){ %>
			<td>□</td>
			<%} %>
		</tr>
		<%}%>
	</table>
</body>
</html>













