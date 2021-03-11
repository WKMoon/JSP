/**
 * 
 */

sessionStorage.Check;
sessionStorage.emailCheck;

var identiForm = document.identiForm;
var identiNum = "";
sessionStorage.emailVal;

function joinSubmit(){
	var form = document.form;
	if(sessionStorage.Check != "true"){
		alert("아이디를 확인해주세요.");
		form.id.focus();
		return false;
	}
	if ($('#agree').not(':checked').length) {
	    alert("가입 약관에 동의해주세요.");
	    return false;
	}
	
	if(sessionStorage.emailCheck != "true"){
		alert("이메일 본인 인증을 해주세요.");
		return false;
	}

	
	form.submit();
}

function transferEmail(){
	sessionStorage.emailVal = document.getElementById("email").value;
	if(sessionStorage.emailVal == ""){
		alert("이메일을 입력해주세요.");
		return false;
	}else{
		this.document.location.href = contextPath+"/app/member/identification.jsp";
	}
}

function goToAgreement(){
	this.document.location.href = contextPath+"/app/member/agreement.jsp";
}

function sendEmail(){
	var identiEmail = document.getElementById("identiEmail").value;

	if(identiEmail != sessionStorage.emailVal){
		alert("입력한 이메일과 인증한 이메일이 불일치합니다. 확인해주세요.");
		return false;
	}
	if(identiEmail == ""){
		alert("이메일을 입력해주세요.");
		identiForm.identiEmail.focus();
		return false;
	}else{
		$.ajax({
			url: contextPath+"/member/MemberIdentificationOk.me?identiEmail="+identiEmail,
			type:"get",
			datatype:"text",
			success:function(result){
				identiNum = result.trim();
				console.log("이메일 전송 성공");
			},
			error:function(){
				console.log("오류");
			}
		});
	}
	
}




function checkIdentification(){
	var identiInput = document.getElementById("identiInput").value;

	console.log(identiNum);
	console.log(identiInput);
	if(identiNum == identiInput){
		alert("본인인증 성공");
		sessionStorage.emailCheck = true;
	}else{
		alert("본인인증 실패");
		sessionStorage.emailCheck = false;
	}
}

function checkId(id){
	sessionStorage.Check = false;
	if(id == ""){
		$("#id").css("background","#F1B9A1");
		return false;
	}else{
		$.ajax({
			url:contextPath + "/member/MemberCheckIdOk.me?id="+id,	//요청할 url
			type:"get", //method
			dataType:"text", //전달받을 데이터의 타입
			success:function(result){	//통신 성공 시 응답 값을 result로 받는다.
				if(result.trim() == "ok"){
					sessionStorage.Check = true;
					$("#id").css("background","#AEDADD");
				}else{
					$("#id").css("background","#F1B9A1");
				}
			},
			error:function(){	//통신 오류 시
				console.log("오류");
			}
			
		});
	}
}


$("input[name='id']").keyup(function(event){
	var id = $("input[name='id']").val();
	checkId(id);
});

$(function () {
    $("#identiInput").keyup(function () {
        //Reference the Button.
        var btnSubmit = $("#identiBtn");

        //Verify the TextBox value.
        if ($(this).val().trim() != "") {
            //Enable the TextBox when TextBox has value.
            btnSubmit.removeAttr("disabled");
        } else {
            //Disable the TextBox when TextBox is empty.
            btnSubmit.attr("disabled", "disabled");
        }
    });
});


















