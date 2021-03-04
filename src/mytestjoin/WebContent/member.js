/**
 * 
 */

var check=false;

//input 태그를 클릭하면 
function modifyId(){
	document.joinForm.id.readOnly= false;
	check= false;
	
}
function sendIt(){
	//Ajax
	var httpRequest = new XMLHttpRequest();
	
	httpRequest.open("GET", "join_ok.jsp?id="+document.getElementById("id").value);
	httpRequest.send();
	
	httpRequest.onreadystatechange = function(){
		if(httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200){
			//요청한 파일에는 값만 존재하는 것이 처리하기 편하다.
			//responseText로 전달받은 값의 앞 뒤 공백을 없애주기 위해 trim()을 사용한다.
			if(httpRequest.responseText.trim() == "ok"){
				//중복검사를 한 아이디 input태그에 수정을 막아준다.
				document.joinForm.id.readOnly = true;
				//중복검사의 결과값을 화면에 뿌려준다.
				document.getElementById("result").innerHTML = "사용가능한 아이디입니다.";
				//회원가입을 진행할 수 있도록 Flag를 true로 변경해준다.
				check = true;
			}else{
				document.getElementById("result").innerHTML = "중복된 아이디입니다.";
				//중복된 아이디라면 check를 false로 설정해준다.
				check = false;
			}
		}
	}
}
	
	function join(){
		var frm=document.joinForm;
		
		if(frm.id.value==""){
			alert("아이디를 입력해주세요.");
			frm.id.focus();
			return false;
		}
		if(frm.password.value == ""){
			alert("비밀번호를 입력해주세요.");
			frm.password.focus();
			return false;
			
		}
		
		if(!check){
			alert("아이디 중복확인을 진행해주세요.");
			return false;
		}
		frm.submit();
	}