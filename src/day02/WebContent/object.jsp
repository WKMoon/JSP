<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 예제</title>
</head>
<body>
<!--  폼태그는 name은 document 객체로 선언되어서 바로 객체로 가져올수 있다->
<!--  ex) 		var frm=doucument.join	;-->
	<form action="object_ok.jsp" name="join">
		<fieldset>
			<legend>개인정보</legend>
			<input type="text" name="name">
			<input type="date" name="birthday">
			<!-- sibmit 하기 전에 연산을 하기 위해 button을 만듬   -->
			<input type="button" value="확인" onclick="sendIt()">
		</fieldset>
	</form>

</body>
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script >

/*  이전 상태로 되돌리고 싶을 때에는 
 	이전 전체의 body를 저장한 후 덮어쓰는 방법을 주로 사용한다.
 */


	$("input[name='name']").click(function(){
		/*  removerAtt -->속성 지워주기 */
		$("input[name='name']").removerAtt('style');
		$("input[name='name']").removerAtt('placeholder');
		
	});
	
	$("input[name='birthday']").click(function(){
		$("input[name='birthday']").removerAtt('style');	
	});
	
	
	function sendIt() {
		var frm=document.join;
		var check=false;

		if(frm.name.value == ""){
			/*  input 태그에 name이 ='name'이라는 값을 가져와라   */
			$("input[name='name']").css('border-color','red');
			/*  css속성은 .css // 일반 속성은 attr*/
			$("input[name='name']").attr('placeholder','성함을 입력하세요');
			check=true;
		}
		if(frm.birthday.value == ""){
			$("input[name='birthday']").css('border-color','red');
			check=true;
		}
		
		if(check){return false;}
		
		frm.submit();
		
	}
	
	
	
</script>
</html>