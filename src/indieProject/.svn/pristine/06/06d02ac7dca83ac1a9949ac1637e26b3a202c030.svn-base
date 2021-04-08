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
	<style>
		@media screen and (min-width:481px) {
			.col-8 .button {
				width: 11em;
			}
		}
	</style>
	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />

		<!-- Main -->
			<section id="banner" class="wrapper style1 special">
				<div class="container">
						<h2>영화 게시판</h2>
				</div>
			</section>
					<!-- Content -->
			<section id="one" class="wrapper style1">
				<div class="container">
					<section class="feature" style="border-bottom: solid 1px rgba(144, 144, 144, 0.25);">
						<div class="row gtr-200 aln-middle">
							<div class="col-4 col-12-medium">
								<span class="image fit">
									<img src="${pageContext.request.contextPath}/images/pic02.jpg" alt="영화 포스터" />
								</span>
							</div>
							<div class="col-8 col-12-medium">
								<header class="major">
									<h2>영화 제목</h2>
									<p>2021.03.29</p>
								</header>
									<p>
										감독 : <br>
										길이 : <br>
										장르 : <br>
										영상물 등급 :
									</p>
								<ul class="actions" id="test">
									<li><a href="https://youtu.be/86BST8NIpNM" class="button alt">영화 보러 가기</a></li>
									<li><a class="button" onclick="sendPopcorn()">팝콘 보내기</a></li>
								</ul>
								
							</div>
						</div>
					</section>
					<section id="content">
							<br>
							<h2>포스터 / 스틸컷</h2>
							<section class="carousel">
								<article>
									<a href="${pageContext.request.contextPath}/images/fulls/01.jpg" class="image"><img src="${pageContext.request.contextPath}/images/thumbs/01.jpg" alt="" title="Lorem ipsum dolor sit amet" /></a>
								</article>
								<article>
									<a href="${pageContext.request.contextPath}/images/fulls/02.jpg" class="image"><img src="${pageContext.request.contextPath}/images/thumbs/02.jpg" alt="" title="Lorem ipsum dolor sit amet" /></a>
								</article>
								<article>
									<a href="${pageContext.request.contextPath}/images/fulls/03.jpg" class="image"><img src="${pageContext.request.contextPath}/images/thumbs/03.jpg" alt="" title="Lorem ipsum dolor sit amet" /></a>
								</article>
								<article>
									<a href="${pageContext.request.contextPath}/images/fulls/04.jpg" class="image"><img src="${pageContext.request.contextPath}/images/thumbs/04.jpg" alt="" title="Lorem ipsum dolor sit amet" /></a>
								</article>
								<article>
									<a href="${pageContext.request.contextPath}/images/fulls/05.jpg" class="image"><img src="${pageContext.request.contextPath}/images/thumbs/05.jpg" alt="" title="Lorem ipsum dolor sit amet" /></a>
								</article>
							</section>
							<hr>
							<h2>시놉시스</h2>
							<p>영화 줄거리에 대한 내용.</p>
							<hr>
							<h2>연출 의도 / 제작 이야기</h2>
							<p>적고 싶은 내용들 ~~~~ </p>
							<hr>
							<div class="row">
								<div class="col-6 col-12-medium">
									<h2>만든 사람들</h2>
								<p> 연출 : </p>
								<p> 각본 : 등등</p>							
								</div>
								<div class="col-6 col-12-medium">
									<h2>나오는 사람들</h2>
								<p> 누구 : 무슨 역</p>
								<p> 누구 : 등등등 </p>
								</div>
							</div>
							<hr>
							<h2>팝콘 보낸 사람들?,,</h2>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>아이디</th>
											<th>한마디</th>
											<th>보낸 팝콘 수</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>후원자1</td>
											<td>팝콘 쏜 사람만 할 수 있는 한마디!!!!</td>
											<td>10</td>
										</tr>
										<tr>
											<td>후원자2</td>
											<td>인생 영화입니다 꼭 보세요!@!!</td>
											<td>100</td>
										</tr>
									</tbody>
								</table>
							</div>
							<hr>
							<h2>영화 후기</h2>
							<p>아직 등록된 후기가 없습니다.</p>
							<ul class="actions">
									<li><a href="#" class="button alt small fit">후기 작성하러 가기</a></li>
							</ul>
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
			<script>
				var test = $('#test');
				test.poptrox({
					usePopupCloser: false
				});
				
				function sendPopcorn(){
					var _width = 380;
					var _height = 500;
					
					var _left = Math.ceil(( window.screen.width - _width )/2);
				    var _top = Math.ceil(( window.screen.height - _height )/2);
				    
					var sendPopcornFrame = window.open("${pageContext.request.contextPath}/app/amaMovie/sendPopcorn.jsp", 
							"popup","width=380px, height=500px, left="+_left+", top="+_top+", resizable=no, scrollbars=no", true);
				}
			</script>

	</body>
</html>