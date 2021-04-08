<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />

		<!-- Main -->
			<section id="main">
				<div class="container">
					<header class="major">
						<h2>문의하기</h2>
						<p>메일로 답변을 드립니다.</p>
					</header>

					<!-- Content -->
						<section id="content">
							<form method="post" action="#">
								<div class="row">
									<div class="col-3 col-12-small" style="margin-left: auto; margin-bottom:1em;">								
										<input type="text" name="memberId" id="name" value="" placeholder="ID" />				
									</div>
									<div class="col-3 col-12-small" style="margin-right: auto; margin-bottom:1em;">											
										<input type="email" name="email" id="email" value="" placeholder="EMAIL" />
									</div>
								</div>
								<div class="row">
									<div class="col-6 col-12-small" style="margin: 1em auto 1em auto;">
										<select name="category" id="category">
											<option value="">- 문의 내용 -</option>
											<option value="1">서비스 이용</option>
											<option value="1">후원 문의</option>
											<option value="1">게시글 삭제 요청</option>
											<option value="1">기타</option>
										</select>
										<br>
										<textarea name="message" id="message" placeholder="문의할 내용을 작성 바랍니다." rows="6" style="resize:none"></textarea>
										<br>
										<ul class="actions">
											<li style="margin:auto;"><input type="submit" value="문의하기" /></li>
										</ul>
									</div>									
								</div>
							</form>
						</section>
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

	</body>
</html>