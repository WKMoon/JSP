<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean class="com.mytest.join.TABLE_MEMBER_DAO" id="dao"/>
<%
	
	if(dao.checkId(request.getParameter("id"))){
		out.print("중복");
	}else{
		out.print("가능");
	}

%>