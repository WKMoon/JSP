<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:useBean class="com.koreait.beans.TABLE_MEMBER_DAO " id="dao"/>   
         <jsp:useBean class="com.koreait.beans.TABLE_MEMBER_VO" id="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>

	<jsp:getProperty property="name" name="name"/>

	<p><%=member.getName()%>님 환영합니다</p>
	

</body>
</html>