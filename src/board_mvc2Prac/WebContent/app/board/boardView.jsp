<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>MVC 게시판</title>
	</head>
	<body>
		<c:set var="b_vo" value="${b_vo}"/>
		<c:set var="replies" value="${replies}"/>
		<c:set var="files" value="${files}"/>
		<center>
		<c:choose>
			<c:when test="${session_id eq null}">
			<script>
				alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/member/MemberLogin.me");
			</script>
			</c:when>
			<c:otherwise>
			<table border="0" cellpadding="0" cellspacing="0" width="900px" >
				<tr align="right" valign="middle">
					<td>
						${session_id} 님 환영합니다.
						<a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a>
					</td>
				</tr>
			</table>
			</c:otherwise>
			</c:choose>
			<br />
			<br />
		
			<table width="900px" border="0" cellpadding="0" cellspacing="0">
				<tr align="center" valign="middle">
					<td><h3>MVC 게시판</h3></td>
				</tr>
			</table>
				
			<table width="900px" border="1" cellpadding="0" cellspacing="0">
				<tr height="30px">
					<td align="center" width="150px">제 목</td>
					<td style="padding-left:10px;"></td>
				</tr>
				
				<tr height="30px">
					<td  align="center" width="150px">아이디</td>
					<td style="padding-left:10px;"></td>
				</tr>
				
				<tr height="200px">
					<td align="center" width="150px">내 용</td>
					<td valign="top" style="padding-top:10px; padding-left:10px;"></td>
				</tr>
				
				<c:if test="${files != null}">
					<tr height="30px">
						<td align="center">첨부파일</td>
						<td>

						</td>
					</tr>
				</c:if>
			</table>


			<!-- 댓글 -->
			<table id="replyTable"></table>
		</center>
	</body>
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
	<script>

	</script>
	<script>

	</script>
</html>




















