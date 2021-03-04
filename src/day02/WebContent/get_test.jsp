<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET 방식의 요청</title>
</head>
<body>
	<h1>GET방식으로 요청 </h1>
	
	<%
	String city=request.getParameter("city");
	String zipcode=request.getParameter("zipcode");
	
	/*  null 이 나오면 주소값(객체)이 없다는 뜻*/
	if(city == null ||zipcode ==null){
		/* 요청한다. jsp파일로 그러므로 바로 이동한다.  */
		response.sendRedirect("post_test.jsp");
		
	}else{
		
	%>
<!-- action 을 생략하면 현제 페이지만 가능  -->
<!--  method는 생략하면 디폴드 값은 get이다.-->
	<form action="get_test.jsp" method="get">
		<input type="text" name="city" value="Seoul" readonly>
		<input type="text" name="zipcode" value="06141" readonly>
		<button type="submit">GET 방식으로 요청 보내기</button>
	</form>
	<p><%= city %>,<%=zipcode %></p>
	
	<%
		}
	%>
</body>
</html>