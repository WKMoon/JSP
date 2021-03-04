n<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean class="com.mytest.join.TABLE_MEMBER_DAO" id="dao"/>
    
<%
	String userid=request.getParameter("userid");
	String pwd=request.getParameter("pwd");

%>

<!-- if(m_dao.login(request.getParameter("usreid"), getParameter("pwd")-->
<%

	if(dao.login(userid,pwd)){
		session.setAttribute("userid", userid);
		response.sendRedirect("login.jsp");
	}else{
%>
		
	<script>
	alert("로그인 실패");
	locatoin.href="login.jsp";
	
	</script>	
	
	
	<%
	
	}

	%>