<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>아이디/비밀번호 찾기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	
	<style>
	@media screen and (max-width:839px) {
			.button{
				width:90% !important;
			}
		}
	</style>

	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />


		<!-- Main -->
			<section id="main">
				<div class="container" >
					<header class="major">
						<h2>아이디/비밀번호 찾기</h2>
					</header>

					<!-- Content -->
					<div class="row">
						<div class="col-4 col-12-medium" style="margin:0 auto; width:40%;  text-align: center;">
							<h3>임시비밀번호 전송 완료</h3>
							<p>abcd@gamil로 전송 완료</p>
							 <a href="#" class="button" style="width:50%; margin:0 auto; margin-top:30px;" onclick="singup()">로그인하기</a>
						</div>
					</div>
							
				</div>
			</section>

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/../footer.jsp" />

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.poptrox.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/findIdPw.js"></script>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			

	</body>
</html>