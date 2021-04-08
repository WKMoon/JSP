<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	.embed-container { 
		position: relative; 
		padding-bottom: 56.25%; 
		height: 0; overflow: 
		hidden; max-width: 100%; } 
	.embed-container iframe, .embed-container object, .embed-container embed { 
		position: absolute; 
		top: 0; 
		left: 0; 
		width: 100%; 
		height: 100%; }
		
	@media screen and (max-width: 480px) {
		.date{
			display:none;
		}
	}
	@media screen and (max-width: 741px) {

	}
	
</style>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />

		<!-- Movie -->
			<section id="banner" class="wrapper style1 special">
				<div class="container">
						<h2>영화 시청</h2>
						<br>
						<section id="content">
							<div class="embed-container">
								<div class="col-8 col-12-medium" style="margin:auto;">
									<iframe src='https://www.youtube.com/embed//v7bnOxV4jAc' frameborder='0' allowfullscreen></iframe>
								</div>
							</div>
						</section>
				</div>
			</section>
		
		<!-- Review -->
			<section class="wrapper style1 special" style="padding-bottom:0;">
				<div class="container">
					<header class="major">
						<h2>영화 후기</h2>
						<p>솔직한 후기를 남겨주세요!</p>
					</header>
					<section>
						<div class="row">
							<div style="width:80%">								
								<input type="text">			
							</div>
							<div style="padding:0; width:20%">
								<ul class="actions stacked">
									<li><a href="#" class="button small fit alt" >내 감상평 남기기</a></li>
								</ul>										
							</div>
						</div>
						<div class="row">
							<div style="text-align:left;">								
								<h2>⭐5.0</h2>
							</div>
							<div>
								<ul class="actions special">
									<li><a href="#" class="button small fit">팝콘 보내기</a></li>
								</ul>			
							</div>
						</div>
					</section>
				</div>
			</section>
			<section>
				<div class="container">
					<section>
						<div class="table-wrapper">
							<table>
								<thead>
									<tr>
										<th>별점</th>
										<th>감상평</th>
										<th>아이디</th>
										<th class="date">날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>⭐⭐⭐⭐⭐</td>
										<td>너무 재밌었어요~~~</td>
										<td>abc123</td>
										<td class="date">2021.03.25</td>
									</tr>
									<tr>
										<td>⭐⭐⭐⭐</td>
										<td>재밌었어요~~</td>
										<td>qwe123</td>
										<td class="date">2021.03.25</td>
									</tr>
									<tr>
										<td>⭐⭐⭐</td>
										<td>괜찮았어요~</td>
										<td>fds123</td>
										<td class="date">2021.03.25</td>
									</tr>
									<tr>
										<td>⭐⭐</td>
										<td>별로,,</td>
										<td>zvc19</td>
										<td class="date">2021.03.25</td>
									</tr>
									<tr>
										<td>⭐</td>
										<td>재미없어요</td>
										<td>gg132</td>
										<td class="date">2021.03.25</td>
									</tr>
								</tbody>
							</table>
						</div>
							<table>
								<tfoot style="text-align:center;">
									<tr>
										<td><a>1</a></td>
										<td><a>2</a></td>
										<td><a>3</a></td>
										<td><a>4</a></td>
										<td><a>5</a></td>
									</tr>
								</tfoot>
							</table>
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