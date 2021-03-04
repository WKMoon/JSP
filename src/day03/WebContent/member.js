/**
 * 회원가입 세부 설정
 */

var check = false;

//사용가능한 아이디를 수정했을 때
function modifyId(){
	//다시 수정할 수 있도로 inpit태그를 누르면 readOnly를 풀어준다.
	document.joinForm.id.readOnly=false;
	check = false;
}


function sendIt() {
	//ajax
	var httpRequest=new XMLHttpRequest();
	var id=document.getElementById("id").value;


	httpRequest.open("POST","join_ok.jsp",true);
	httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	httpRequest.send("id="+id);

	
	httpRequest.onreadystatechange=function(){
		if(httpRequest.readyState==4 && httpRequest.status==200){
			if(httpRequest.responseText.trim() == "사용가능한 아이디 입니다."){
				//사용가능한 아이디이면 더이상 수정하지 못하도록 
				document.joinForm.id.readOnly=true;
				document.getElementById("result").innerHTML=httpRequest.responseText;
				check=true;
			}else{
				document.getElementById("result").innerHTML=httpRequest.responseText;
				check=false;
			}
		}
	}

}


function join() {
	var frm = document.joinForm;

	if(frm.id.value == ""){
		alert("아이디를 입력해주세요");
		frm.id.focus();
		return false;
	}

		//아이디를 4자 이상 16자 이하로 입력
		
	if(frm.id.value.length < 4 || frm.id.value.length > 16){
		alert("아이디는 4자 이상, 16자 이하로 입력해주세요.");
		frm.id.focus();
		return false;
	}
	
	
	if(frm.name.value == ""){
		alert("이름을 입력해주세요.");
		frm.name.focus();
		return false;
	}
	
	if(frm.password.value == ""){
		alert("패스워드를 입력해주세요.");
		frm.password.focus();
		return false;
		
		}else{
			//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는지 검사 
			var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$^&*-]).{8,}$/;
			//한글이 있는지 검사
			var hangleCheck=/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			
			if(!reg.test(frm.password.value)){
				//정규식 조건에 맞지 않으면 들어온다.
				//정규식이 모두 만족하면 true지만 한가지라도 잘못하면 false
				alert("비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫지/특수문자 모두 포함해야 합니다.");
				frm.password.focus();
				return false;
			}
			//같은 문자를 4번 이상 사용할 수 없다.
			else if(/(\w)\1\1\1/.test(frm.password.value)){
				//같은 문자 4개 이상 있다면 
				//true면 4번 이상 사용했다는 것 
				alert("같은 문자를 4번 이상 사용할 수 없다.");
				frm.passWord.focus();
				return false;
			}
			//비밀번호 에 아이디가 포함되어 있을 수 없다
			else if(frm.password.value.search(frm.id.value)>-1){
				//-1은 아이디가 비밀번호에 없다는 뜻 따라서 -1이 아닐떄 (아이디를 비밀번호에서 찾았을떄)들어옴
				//포함되어 있지 않으면 -1이라는 의미 
				//-1보다 크면 포함되어 있다는 뜻
				alert("비밀번호에 아이디를 포함할 수 없습니다.");
				frm.passWord.focus();
				return false;
				
			}else if(hangleCheck.test(frm.password.value)){
				//정규식 조건에 맞을때 
				//한글이 있을 떄 들어온다
				alert("비밀번호에 한글을 사용할 수 없습니다.");
				frm.passWord.focus();
				return false;
			}
			//비밀번호에 공백을 포함할 수 없다.
			else if(frm.password.value.search(/\s/) !=-1){
				//비밀번호에 공백을 찾았다면 
				//공백을 찾았을 때 들어오는 것임으로 -1이 아니면 찾은 것 (찾으면 1이된다)
				//>-1 와  !=-1은 같은 의미 
				alert("비밀번호에 공백 없이 입력해주세요..");
				frm.passWord.focus();
				return false;
				
			}
			
			if(frm.password.value != frm.password_re.value){
				alert("패스워드를 확인해주세요");
				frm.password_re.focus();
				return false;
			}
			
			//아이디 중복검사
			//chcek가 true면 중복 
			if(!check){
				alert("아이디 중복확인을 진행해주세요");
				return false;
			}
			
			frm.submit();
			
		} 
		
}