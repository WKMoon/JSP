<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!--  데이터의 값을 db에 담기 위해 빠짐없이 담는다.-->
<jsp:useBean id="m_vo" class="com.koreait.beans.TABLE_MEMBER_VO"/>
<jsp:useBean id="m_dao" class="com.koreait.beans.TABLE_MEMBER_DAO"/>
<!-- 반드시 파라미터의 KEY(name)값과 해당 객체의 필드명이 일치해야 정확한 값이 들어간다. -->
<!-- 그로므로 필드명과 db_vo에의 필드명이 같아야 *을 썻을때  정보가 장 들어간다 -->
<jsp:setProperty property="*" name="m_vo"/>
<!-- 하나씩 하면 이런 코드 -->
<%-- <jsp:setProperty property="name" name="name_vo" value=<%=request.getParameter("name") %>"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		String url = "";
		
	//전달받은 데이터들을 DB에 INSERT한다.
		if(m_dao.join(m_vo)){
			//회원가입 성공
			//sendReadirect()방식으로 쿼리 스트링에 한글 데이터를 전달할 떄 반드시 인코딩을 직접 설정해주어야 한다.
			//방금 입력한 이름 값을 전달해주기 
			url = "join_finish.jsp?name=" + URLEncoder.encode(m_vo.getName(), "UTF-8");
		}else{
			//회원가입 실패 
			//check가 null이면 회원가입 성공 
			url = "join.jsp?check=false";
		}
	//특정 처리 후, 또는 특정 조건일 때에 지정한 페이지로 이동하고 싶은 경우 많이 사용되는 것
	//Redirext는 인코딩을 해주지 않고 간다.
	//form action는 인코딩을 맞춰준다.	
		response.sendRedirect(url);
	%>
</body>
</html>
