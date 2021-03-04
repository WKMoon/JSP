<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 실습(제어문 - 반복문)</title>
</head>
<body>
<!--
   1단 부터 100단까지 중 사용자에게 입력받은 단수로 구구단 출력하기.
   입력받은 값이 정수인지 아닌지 판단, 값을 입력했는지 안했는지 판단.
   다른 페이지 이동 없이 현재 페이지에서만 기능 구현
   자바스크립트 사용 가능(Number.isInteger(parseInt(값)) : boolean) 
-->
   <h2>JSTL 실습(제어문 - 반복문)</h2>
   <form name="gugudan">
      단 수 : <input type="text" name="dan" placeholder="정수 입력">
      <input type="button" value="확인" onclick="sendIt()">
   </form>
   
   <%--날아온 파라미터를 set으로 변수 선언을 하고 지정해주기 --%>
   <c:set var="dan" value="${param.dan}"/><!-- 파라미터 저장 -->
   
   <%-- input태그에 값이 있는지 없는지 확인--%>
   <%-- input태그에 값이 있다면 false 없으면 true기 때문에  not empty로 --%>
   <c:if test="${not empty dan}">
      <c:choose>
         <%-- 입력한 값이 0보다 크고 101보다 작을 때 --%>
         <c:when test="${dan > 0 and dan < 101}">
            <c:forEach var="i" begin="1" end="9">
               <c:out value="${dan} * ${i} = ${dan * i}"/><br>
            </c:forEach>
         </c:when>
         <%-- otherwise : default 역할--%>
         <c:otherwise>
            1이상 100이하의 값으로 입력해주세요.
         </c:otherwise>
      </c:choose>
   </c:if>
</body>
<!-- jQuery는 사용하지 않는다. -->
<script>
   //엔터 처리
   /*  keydown 누르자마자   keyup눌렀다 떄면 */
   document.addEventListener("keydown", function(key){
    	  /*  keyCode 13번은 엔터이다.*/
      if(key.keyCode == 13){
    	  /*  .preventDefault() 이벤트 막아주기  */
         key.preventDefault();
      }
   });
   
   
   function sendIt(){
      var frm = document.gugudan;
      var data = frm.dan.value;
      /*  실수 예외처리 */
      /*1로 나눈 나머지가 0이면 정수라는 뜻   */
       /* boolean 타입으로 선언 가능  */
      var check = data % 1 == 0;
      
       /*  문자값으로 들어오기 때문에 parsInt()를 해주어야 한다.*/
      if(!Number.isInteger(parseInt(data)) || data == "" || !check){
         alert("정수만 입력해주세요.");
         return false;
      }
       /*  3.0 , 4.0같은 정수를 parInt로 정수로 바꿔주는 작업 */
      frm.dan.value = parseInt(data);
      frm.submit();
   }
</script>
</html>
