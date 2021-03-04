<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>


		<form action="login_ok.jsp" method="post" name="loginForm">
		<p><label>아이디<input type="text" name="uesrid"></label></p>
		<p><label>비밀번호</label><input type="password" name="pwd"></label></p>
		<p><label>아이디<input type="button" value="로그인" onclick="sendIt()"></label></p>
		
	
	</form>


</body>
</html>