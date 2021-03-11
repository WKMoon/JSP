<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<title>아이디/비밀번호 찾기</title>
</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a href="#menu">Menu</a>
				<a href="${pageContext.request.contextPath}/app/member/login.jsp">Log In</a>
				<a href="${pageContext.request.contextPath}/app/member/signup.jsp" class="button">Sign Up</a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="${pageContext.request.contextPath}/app/member/index.jsp">Home</a></li>
<!-- 					<li><a href="generic.html">Generic</a></li>
					<li><a href="elements.html">Elements</a></li> -->
				</ul>
				<ul class="actions stacked">
					<li><a href="${pageContext.request.contextPath}/app/member/login.jsp" class="button primary fit">Log In</a></li>
					<li><a href="${pageContext.request.contextPath}/app/member/signup.jsp" class="button fit">Sign Up</a></li>
				</ul>
			</nav>


		<!-- Main -->
			<section id="main" class="wrapper style1">
				<div class="inner">

					<!-- Title -->
						<header class="major special">
							<h1>아이디/비밀번호 찾기</h1>
							<p>아이디/비밀번호는 이메일로 발송됩니다.</p>
						</header>

					<!-- Content -->
						<div class="content">
							<form id="findForm" method="post" action="">
											<div class="row">
											
												<div class="box" style="margin:0 auto;">
													<div class="col-6 col-12-xsmall">
														<input type="text" name="idName" id="idName" value="" placeholder="Name" />
													</div>
													<div class="col-6 col-12-xsmall">
														<input type="email" name="idEmail" id="idEmail" value="" placeholder="Email" />
													</div>
													<input type="button" value="아이디 찾기" class="primary" onclick="findId()"/>
													
												</div>
										
													<div class="box" style="margin:0 auto;">
														<div class="col-6 col-12-xsmall">
															<input type="text" name="pwId" id="pwId" value="" placeholder="ID" />
														</div>
														<div class="col-6 col-12-xsmall">
															<input type="email" name="pwEmail" id="pwEmail" value="" placeholder="Email" />
														</div>
														<input type="button" value="비밀번호 찾기" class="primary" onclick="findPw()"/>
													</div>
											</div>
										</form>
						</div>

				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<ul class="alt-icons">
					<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon solid fa-phone"><span class="label">Phone</span></a></li>
					<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
				</ul>
				<ul class="menu">
					<li><a href="#">Terms of Use</a></li>
					<li><a href="#">Privacy Policy</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
				<p class="copyright">
					&copy; Untitled Corp. All rights reserved. Lorem ipsum dolor sit amet nullam.
				</p>
			</footer>

		<!-- Scripts -->
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script>
				var check = '<%= (String)request.getParameter("login") %>'
				if(check == "false"){
					alert("입력하신 정보는 일치하지 않습니다.");
				}
			</script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/app/member/find.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	</body>
</html>