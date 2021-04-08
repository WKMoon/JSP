<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
		<center>
			<c:if test="${session_id eq null}">
				<script>
					alert("로그인 후 이용해주세요");
					location.replace("${pageContext.request.contextPath}/member/MemberLogin.me");
				</script>
			</c:if>
			<table border="0" cellpadding="0" cellspacing="0" width="900px" >
				<tr align="right" valign="middle">
					<td>
						${session_id} 님 환영합니다.
						<a href="${pageContext.request.contextPath}/member/MemberLogout.me">로그아웃</a>
					</td>
				</tr>
			</table>
			<br />
			<br />
			<form action="${pageContext.request.contextPath}/board/BoardModifyOk.bo" method="post" name="modifyForm" enctype="multipart/form-data">
				<input type="hidden" name="boardNum" value="${b_vo.getBoardNum()}">
				<input type="hidden" name="page" value="${page}">
				<table width="900px" border="0" cellpadding="0" cellspacing="0">
					<tr align="center" valign="middle">
						<td><h3>MVC 게시판</h3></td>
					</tr>
				</table>
				
				<table width="900px" border="1" cellpadding="0" cellspacing="0">
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">제 목</div>
						</td>
						<td style="padding-left:10px;">
							<input name="boardTitle" type="text" size="50" maxlength="100" value="" />
						</td>
					</tr>
					<tr height="30px">
						<td align="center" width="150px">
							<div align="center">글쓴이</div>
						</td>
						<td style="padding-left:10px;">
							<input name="boardId" type="text" size="10" maxlength="10" value="" readonly/>
						</td>
					</tr>
					<tr height="200px">
						<td align="center" width="150px">
							<div align="center">내 용</div>
						</td>
						<td style="padding-left:10px;">
							<textarea name="boardContent" style="width:700px; height:185px; resize:none;"></textarea>
						</td>
					</tr>
					
				</table>
				
				<table border="0" cellpadding="0" cellspacing="0" width="900px">
					<tr align="right" valign="middle">
						<td>
							<a href="javascript:modifyBoard()">[수정]</a>&nbsp;&nbsp;
							<a href="">[목록]</a>&nbsp;&nbsp;
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script>
	<script>

	</script>
</html>










