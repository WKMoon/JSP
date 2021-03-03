<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 태그 예제</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<hr>
	<h4>-------------------현재 페이지 영역--------------------</h4>
	<hr>
	<jsp:include page="footer.jsp" />
</body>
</html>