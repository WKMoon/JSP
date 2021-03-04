<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET, POST 방식의 요청</title>
</head>
<body>
	<!-- <h1>GET방식의 요청</h1>
	<button type="button" onclick="sendRequest()">GET방식으로 요청 보내기 </button>
	<p id="text"></p>
 -->
 
 	<h1>POST방식의 요청</h1>
	<button type="button" onclick="sendRequest()">POST방식으로 요청 보내기 </button>
	<p id="text"></p>
	
</body>
<script>
	function sendRequest() {
		var httpRequest=new XMLHttpRequest();
		
		/*  GET 방식 */
		/* true는 비동기 false는 동기 */
/*   	httpRequest.open("GET", "request_ajax.jsp?city=Seoul&zipcode=88855", true);
     	 httpRequest.send(); */

     	 
     	 /*POST 방식   */
		httpRequest.open("POST","request_ajax.jsp", true);
     	 //헤더에 담을 데이터 타입 정해주기 
     	httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
     	 //전달할 값 넣어주기
     	httpRequest.send("city=Seoul&zipcode=55775");
     	 
		
		httpRequest.onreadystatechange=function(){
				/*  요청과 응답이 성공하면 들어온다*/
			if(httpRequest.readyState==4 && httpRequest.status==200){
				/*  응답 값을 받아온다.==> httpReques.responseText;*/
				document.getElementById("text").innerHTML=httpRequest.responseText;
				
	
			}
			
		}
		
	}


</script>
</html>