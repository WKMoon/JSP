<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP TEST(제어문-반복문)</title>
</head>
<body>
	forEach연습 결과
	<c:forEach var="i" begin="1" end="10" step="1">
			<c:out value="${i}"/>&nbsp; &nbsp;
	</c:forEach>

	<hr>
	
	varStatus 연습결과<br>
	<c:forEach var ="i" begin="1" end="10" step="1" varStatus="stat">
		index:<c:out value="${stat.index }"/><br>
		count:<c:out value="${stat.count }"/><br>
		begin:<c:out value="${stat.begin }"/><br>
		end:<c:out value="${stat.end }"/><br>
		first:<c:out value="${stat.first }"/><br>
		last:<c:out value="${stat.last }"/><br>
	
	</c:forEach>
	
	
	<c:set var="name" value="${param.name}"/>
   <c:choose>
      <c:when test="${empty name}">
         <form>
            이름 : <input type="text" name="name">
            <input type="submit" value="확인">
         </form>
      </c:when>
      <c:when test="${name == 'admin'}">
         관리자
      </c:when>
      <c:when test="${name == 'member'}">
         일반 회원
      </c:when>
      <c:otherwise>
         비회원 (<c:out value="${name}"/>)
      </c:otherwise>
   </c:choose>
</body>
</html>