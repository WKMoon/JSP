/**
 * 
 */

function findId(){
	var name = document.getElementById("idName").value;
	var email = document.getElementById("idEmail").value;
	if(name == "" || email == ""){
		alert("정보를 모두 입력해주세요.");
		return false;
	}
	
	$('#findForm').attr('action', contextPath+'/member/MemberFindIdOk.me');
	
	document.getElementById("findForm").submit();
}

function findPw(){
	var id = document.getElementById("pwId").value;
	var email = document.getElementById("pwEmail").value;
	if(id == "" || email == ""){
		alert("정보를 모두 입력해주세요.");
		return false;
	}
	$('#findForm').attr('action', contextPath+'/member/MemberFindPwOk.me');
	document.getElementById("findForm").submit();
}