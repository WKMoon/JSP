<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Hologram by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body class="landing is-preload">

		<!-- Header -->
			<header id="header">
				<a href="#menu">Menu</a>
				<a href="${pageContext.request.contextPath}/app/member//login.jsp">Log In</a>
				<a href="${pageContext.request.contextPath}/app/member/signup.jsp" class="button">Sign Up</a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="${pageContext.request.contextPath}/index.html">Home</a></li>
					<!-- <li><a href="generic.html">Generic</a></li> -->
					<!-- <li><a href="elements.html">Elements</a></li> -->
				</ul>
				<ul class="actions stacked">
					<li><a href="${pageContext.request.contextPath}/app/member//login.jsp" class="button primary fit">Log In</a></li>
					<li><a href="${pageContext.request.contextPath}/app/member//signup.jsp" class="button fit">Sign Up</a></li>
				</ul>
			</nav>

		<!-- Banner -->
			<section id="banner">
				<header class="major">
					<span class="icon solid fa-code style3"></span>
					<h1>Welcome</h1>
					<p>원활한 이용을 위해 아래 버튼 클릭해주십시오</p>
				</header>
				<ul class="actions special">
					<li><a href="${pageContext.request.contextPath}/app/member/signup.jsp" class="button scrolly">회원가입</a></li>
				</ul>
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
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	</body>
</html>