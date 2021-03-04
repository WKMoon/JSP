<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<!--  
	1. 입려한 아이디를 join_ok.jsp로 전송
	2. join_ok.jsp에서 DAO에 있는 아이디 중복검사 메소드 사용
	3.결과를 join.jsp로 전송(check)
	4.join.jsp에서 check의 값에 따른 적절한 메세지를 p태그에 삽입
	
	※우선 check가 null 인지 부터 판단한 후 false, true검사 
	※어떻게 자바코드에 있는 변수를 JS코그로 가져올 수 있을까?
	

-->

  <%
  	String check=request.getParameter("check");
  
  /*  null일때는 첫 화면일 떄 */
  	if(check ==null){
  		check="";
  	}
  
  %>
  	<input type="hidden" name="check" value="<%=check %>">
  	
	<form  action="join_ok.jsp" name="joinForm">
	
	아이디:<input type="text" name="id"><p id="result"></p>
	<input type="button" value="완료" onclick="sendIt()">
	
	</form>

</body>
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script >

/* 이 페이지가 처음시작 할떄는 check는 null이기 때문에 그때 처리도 해주어야한다. */

	/*  dom으로 가져오기 */
	var check=$("input[name='check']").val();
	
	if(check !=""){
		if(check =="true"){
			$("p#result").text("중복된 아이디입니다.");
		}else{
			$("p#result").text("사용가능한 아이디입니다");
			
		}
	}

	function sendIt(){
		
	 if($("input[name='id']").val() == ""){
		 alert("아이디를 입력해주세요");
		 return false;
	 }

	 document.joinForm.submit();
	}
	
</script>
</html>
