<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TEST(출력의 종류)</title>
</head>
<body>
   ${"<script>alert('안녕')</script>"}
   
   <!--  escapeXml이 true면 값에 html이나 스크립트가 작성되어도 
   실행 가능한 명령어가 아닌 문자열 값으로  인식하게 된다.-->
   <c:out value="<script>alert('안녕')</script>" escapeXml="false"/>
   <c:out value="<script>alert('안녕')</script>"/>
</body>
</html>