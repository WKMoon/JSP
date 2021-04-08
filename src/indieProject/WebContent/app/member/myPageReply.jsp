<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	Gravity by Pixelarity
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
	<style>
		.button {
			width:100%;
		}
		li {
			padding:0 0 !important;
		}
		@media screen and (max-width: 980px) {
			#sidebarDiv {
				display: none;
			}
		}
		@media screen and (max-width: 736px) {
			.select {
				width: 40% !important;
			}
		}
	</style>
	<body class="is-preload">
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />

		<!-- Main -->
			<section id="main">
				<div class="container">
					<div class="row gtr-200">
						<jsp:include page="floatMenu.jsp" />
						<div class="col-9 col-12-medium imp-medium">
							<!-- Content -->
							<section id="content">
								<header class="major">
									<h2>마이페이지</h2>
									<p>내가 작성한 댓글</p>
								</header>
								<fieldset id="movie" style="padding: 15px; border-radius: 10px; margin-bottom: 15px;">
									<table style="margin-bottom: 0;">
										<thead>
											<tr>
												<th>글 번호</th>
												<th>내용</th>
												<th>작성시간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
											<tr>
												<td>N</td>
												<td>내가 작성한 댓글 내용입니다.</td>
												<td>ㅇㅇㅇ</td>
											</tr>
										</tbody>
									</table>
									<div style="text-align: center;">
										<a href="#">[이전]</a>
										&nbsp;1
										<a href="#">&nbsp;2</a>
										<a href="#">&nbsp;3</a>
										<a href="#">&nbsp;4</a>
										<a href="#">&nbsp;5</a>
										<a href="#">&nbsp;6</a>
										<a href="#">&nbsp;[다음]</a>
										
									</div>
								</fieldset>
							</section>
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
		<script src="${pageContext.request.contextPath}/assets/js/floatMenu.js"></script>
		<script>$("#mrp").css("background", "rgba(144, 144, 144, 0.075)");</script>
		
		<script>
			if(window.matchMedia('(max-width: 9999px)').matches){
			}
		</script>
		
	</body>
</html>