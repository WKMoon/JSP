<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.koreait.beans.TABLE_MEMBER_DAO " id="dao"/>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
<!--  DB에서 조회 -->
<!--  out.println를 사용하여 조회 결과 출력-->
	<%
	//중복인지 아닌지를 join.jsp로 전닿해준다.
		//응답 response
		//특정 처리 후, 또는 특정 조건일 때에 지정한 페이지로 이동하고 싶은 경우 
		//사용되는 것이 response.sendRedirect() 메소드이다
		//get방식 
		//"join,jsp? check=" ==>key 값	
	response.sendRedirect("join.jsp?chekc=" +dao.idcheck(request.getParameter("id")));
	
	/* 
		if(dao.idcheck(request.getParameter("id"))){
			out.println("중복된 아이디 입니다.");
		}else{
			out.println("사용 가능한 아이디입니다.");
		}
		 */
	%>


</body>
</html>