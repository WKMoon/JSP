<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean class="com.mytest.join.TABLE_MEMBER_VO" id="m_vo"/>
   <jsp:useBean class="com.mytest.join.TABLE_MEMBER_DAO "id="m_dao"/>
   <jsp:setProperty property="*"  name="m_vo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%

	String url="";

	if(m_dao.join(m_vo)){
		url="join_finish.jsp?name="+URLEncoder.encode(m_vo.getName(),"UTF-8");
	}else{
		url="join.jsp?check=false";
	}
	
	response.sendRedirect(url);

%>

</body>
</html>