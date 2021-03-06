/**
 * 
 */

function loginSubmit(){
	var form = document.loginForm;
	var id = form.id.value;
	var pw = form.pw.value;
	if(id == "" || pw == ""){
		alert("아이디/비밀번호를 입력해주세요.");
		return false;
	
	}else{
		$.ajax({
			url:contextPath+"/member/MemberLogin.me",
			type:"post",
			data:({"id":id,"pw":pw}),
			dataType:"text",
			success:function(result){
				if(result.trim() == "not-ok"){
					alert("로그인 실패");
					$("#loginForm").attr("action","login.jsp");
					form.submit();
					return false;
				}else{
					form.submit();
				}
			},
			error:function(){
				console.log("오류");
			}
		});
	}
}