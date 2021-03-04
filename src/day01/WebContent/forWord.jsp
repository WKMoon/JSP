<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 forward 테스트</title>
</head>
<body>
	<form action="controller.jsp">
	보고싶은 페이지:
	<select name="site">
		<option value="naver"></option>
		<option value="daum"></option>
		<option value="google"></option>
		
	
	</select>
	<input type="submit" value="전송">
	
	</form>

</body>
</html>