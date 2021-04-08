<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
		
	</head>
	<style>
	
	#kakao-login-btn{
		margin-right:auto;
		margin-left:auto;
		width:57%;
	}
		 fieldset{
		   border-radius: 7% ;
		  	margin:0 auto ;
		}
		
		@media screen and (max-width:480px) {
			.button {
				width: 9.2em !important;
			}
			p {
				font-size:0.9em !important;
			}
		}
	</style>
	<body class="is-preload">
	<c:if test="${not empty param.login }">
	   		<c:if test="${not param.login}">
	   				<script>alert("아이디 또는 비밀번호를 다시 확인해주세요.");</script>
	   		</c:if>
	   	</c:if>
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />

		<!-- Main -->
			<section id="main">
				<div class="container">
					<header class="major">
						<h2>로그인</h2>
						<p>IndieProject 서비스 이용을 위해 로그인 하시길 바랍니다.</p>
					</header>

					<!-- Content -->
					<section id="content">
						<div class="row gtr-uniform gtr-50">
							<div class="col-6 col-9-medium col-12-small" style="margin:auto;">
								<fieldset class="fieldset" style="border: solid; border-style: outset; padding-left: 5%; padding-top: 3%; ppadding-right: 0%;">
									<form method="post" action="${pageContext.request.contextPath}/Home.me" name="loginForm">
										<br>
										<h4>아이디</h4>
										<input style="width:94%; margin-bottom: 15px;" type="text" name="memberId" id="memberId" placeholder="ID" />
										<h4>비밀번호</h4>
										<input style="width:94%;" type="password" name="memberPw" id="memberPw" placeholder="PASSWORD" />
										<div style="text-align: left; margin-top:3rem;"><a href="#">아이디 / 비밀번호 찾기</a></div>
										<div style="width:94%; margin-top:2rem; text-align:center;">
											<a style="width:10em;" href="javascript:primaryLogin();" class="button">로그인</a>
											<a style="width:10em;" href="#" class="button alt">회원가입</a>
										</div>
										<div class="image" style="width:94%;">
											
<%-- 									<a id="kakao-login-btn"><img style="margin-left: 50%;cursor: pointer;" alt="" src="${pageContext.request.contextPath}/images/kakao.png" onmouseover="this.src='https://kauth.kakao.com/public/widget/login/kr/kr_02_medium_press.png'"onmouseout="this.src='https://kauth.kakao.com/public/widget/login/kr/kr_02_medium.png'"></a>
 --%>									<a id="kakao-login-btn"></a>
										<a href="http://developers.kakao.com/logout"></a>
										 
										 
										
										
										
										</div>
									</form>
								</fieldset>
							</div>
							
						</div>
					</section>
				</div>
			</section>

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/../footer.jsp" />

		<!-- Scripts -->
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.poptrox.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script type="text/javascript">
		      // 사용할 앱의 JavaScript 키를 설정해 주세요.
		      Kakao.init('d9a10e4883f95c7fd5c17d1e96917a3f');
		      // 카카오 로그인 버튼을 생성합니다.
		      Kakao.Auth.createLoginButton({
		        container: '#kakao-login-btn',
		        success: function(authObj) {
		          // 로그인 성공시, API를 호출합니다.
		          Kakao.API.request({
		            url: '/v2/user/me',
		            success: function(res) {
		              console.log(JSON.stringify(res.kaccount_email));
		              console.log(JSON.stringify(res.id));
		              console.log(JSON.stringify(res.password));
		              console.log(JSON.stringify(res.properties.profile_image));
		              console.log(JSON.stringify(res.properties.nickname));
		              $.ajax({
							type:"get",
							url:contextPath + "/member/MemberLoginOk.me?kakaoid="+JSON.stringify(res.properties.nickname),
							dataType: "text",
						    success:function(result){
						    	if(result.trim() == "success"){
									console.log("세션저장 성공");
						              loginForm.submit();
								}else{
									console.log(result.trim());
									console.log("세션저장 실패");
								}
						    },
						    error:function(data){
						    	  console.log(data);
						    	console.log("로그인안됨");
						    }
						});
		            },
		            fail: function(error) {
		              alert(JSON.stringify(error));
		            }
		          });
		        },
		        fail: function(err) {
		          alert(JSON.stringify(err));
		        }
		      });
			
		</script>
		<script>
			function primaryLogin(){
				var memberId = $("input[name='memberId']").val();
				var memberPw = $("input[name='memberPw']").val();
				if(memberId==""){
					alert("아이디를 입력해주세요");
					return false;
				}
				else if(memberPw==""){
					alert("비밀번호를 입력해주세요");
					return false;
				}else{
					$.ajax({
						url : contextPath + "/member/MemberLoginOk.me",
						type:"post",
						data:({"memberId":memberId,"memberPw":memberPw}),
						dataType:"text",
						success : function(result){
							if(result.trim() == "primaryLoginSuccess"){
					              loginForm.submit();

							}else{
								alert("로그인 실패");
								 $("input[name='memberId']").val("");
								 $("input[name='memberPw']").val("");
							}
						},
						error:function(){
							console.log("오류");

						}
					});
				}
			}
		</script>
	</body>
</html>