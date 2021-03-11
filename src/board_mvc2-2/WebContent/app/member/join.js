/**
 * 회원가입
 */
var check = false;
function formSubmit(){
	var form = document.joinForm;
	if(form.memberId.value == "" || !check){
		alert("아이디를 입력해주세요");
		form.memberId.focus();
		return false;
	}
	form.submit();
}



function checkId(id){
	check = false;
	console.log("들어옴1");
	if(id == ""){
		console.log("들어옴2");
		$("#idCheck_text").text("아이디를 작성해주세요");
	}else{
		console.log("들어옴3");
		$.ajax({
			url:contextPath+"/member/MemberCheckId.me?id="+id,
			type:"get",
			dataType:"text",
			success:function(result){
				if(result.trim() == "ok"){
					check = true;
					$("#idCheck_text").text("사용가능한 아이디입니다.");
				}else{
					$("#idCheck_text").text("중복된 아이디입니다.");
					
				}
			},
			error:function(){console.log("오류");}
		});
	}
}

$("input[name='memberId']").keyup(function(event){
	var id = $("input[name='memberId']").val();
	checkId(id);
});