<%@page import="com.koreait.beans.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean class="com.koreait.beans.MemberVO"  id="member" />
    <jsp:useBean class="com.koreait.beans.MemberDAO"  id="dao" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈즈 예제</title>
</head>
<body>

	<jsp:setProperty property="name" name="member" value="임시은"/>
	<jsp:setProperty property="date" name="member" value="02-02"/>

	<!--  값을 가져오는 getproperty -->
	<!--  property = 필드명 name = 객체명 -->
	<!--  값을 지정해주지 않았기 때문에 기본생성자에 있는 값을 가져온다-->
	<!--set하기 전에 get을 하면 초기값 null이 나온다. -->
	<jsp:getProperty property="name" name="member"/>
	<jsp:getProperty property="date" name="member"/>
	
	
	<table>
	<!--  이렇게 하는 것을 간단하게 하기 위해  자바 빈즈를 사용해준다.-->
	<%-- <%MemberDAO dao=new MemberDAO(); %> --%>
	<%ArrayList<MemberVO> members =dao.select("임시은"); %>
	<!--  dao.select() 메소드를 실행 -->
	<% for(int i=0; i<members.size(); i++)	{%>
		
		
		<!--  동적데이터 -->
		<tr>
			<td><%=members.get(i).getName() %></td>
			<td><%=members.get(i).getBirthday() %></td>
		</tr>
		<%} %>

	</table>
</body>
</html>