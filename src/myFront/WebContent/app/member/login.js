/**
 * 
 */

function loginCheck(){
	var loginForm = document.loginForm;
	var id = loginForm.id.value;
	var pw = loginForm.pw.value;
	if(id == "" || pw == ""){
		alert("아이디와 패스워드 모두 입력해주세요.");
		return false;
	}
	loginForm.submit();
	
}