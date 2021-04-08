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
<title>인디프로젝트</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<!-- 슬라이드 css -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@6.5.0/swiper-bundle.min.css">
<style>
.searchZone {
	width: 50%;
	margin-left: auto !important;
	margin-right: auto !important;
}

.oneLine2 {
	width: 80% !important;
}

.searchBtn {
	width: 20% !important;
}

.row>.col-poster {
	width: 16.66666%;
}

.pagingTable {
	width: 50%;
}



.swiper-container {
	width: 100%;
	height: 100%;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.leftBtn {
	background-color: rgb(0 0 0/ 5%);
	height: 100%;
	top: 0;
	color: white;
	left: 0;
}

.rightBtn {
	background-color: rgb(0 0 0/ 5%);
	height: 100%;
	top: 0;
	color: white;
	right: 0;
}

.btnMouseOver {
	background-color: rgb(0 0 0/ 43%);
}

.poptrox-popup .closer:before {
	right: 0px !important;
	top: 0px !important;
	z-index:9999 !important;
}
.poptrox-popup .closer {
	z-index: 9999;
	border-radius: 20px;
	right: 0px !important;
}
.poptrox-popup {
	top:25px;
	padding-bottom:0 !important;
	
}
.caption {
	display:none !important;
}

.pic{
        	line-height:0 !important;
        }

.floating { position: fixed; right: 50%; top: 180px; margin-right: -720px; text-align:center; width: 120px; }

@media screen and (max-width: 683px) {
	.searchZone {
		width: 100%;
	}
	.oneLine1 {
		width: 100% !important;
	}
	.oneLine2 {
		width: 100% !important;
	}
	.searchBtn {
		width: 100% !important;
	}
	.row>.col-poster {
		width: 33.33333%;
	}
	.pagingTable {
		width: 100%;
	}

	.image{
		width:80%;
	}
	
	.col-poster{
		margin-left: auto !important;
		margin-right: auto !important;
	}
	
}


@media screen and (max-width: 480px) {
	iframe {
		max-width: 330px !important;
	}
	
	.image{
		width:40%;
	}
	
	.col-poster{
		margin-left: auto !important;
		margin-right: auto !important;
	}
}
</style>
<body class="is-preload">

	<!-- Header -->
	<jsp:include page="${pageContext.request.contextPath}/../header.jsp" />

	<!-- Main -->
	<section id="main">
		<div class="container">
			<header class="major">
				<h2>자유게시판</h2>
				
			</header>

			<!-- Content -->
			<section id="content">
				<div id="gallery" style="text-align: center;">
				


					<!-- 검색창 -->
					<form method="post" action="#">
						<div class="row gtr-uniform gtr-50">
							<div class="row gtr-uniform gtr-50 searchZone">
								<div class="col-6 col-12-small oneLine2">
									<input type="text" name="name" id="name" value=""
										placeholder="#" />
								</div>
								<div class="col-3 col-6-large col-12-medium searchBtn">
									<ul class="actions stacked">
										<li><a href="#" data-poptrox="ignore" class="button alt small fit">검색</a></li>
									</ul>
								</div>
								<div class="col-3 col-6-large col-12-medium searchBtn">
									<ul class="actions stacked">
										<li><a href="${pageContext.request.contextPath}/board/BoardWrite.bo" data-poptrox="ignore" class="button small fit">게시글 작성</a></li>
									</ul>
								</div>
							</div>
						</div>
					</form>
					<!-- 포스터 이미지 출력 -->
						<div class="row" style=" width:100%;">
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												
											</a>
										</div>
									</div>
								
								</div>
					</div>
						
						
						
						
					
						<%-- <div class="floating" style="width: 20%; height:50%; margin-top:13%;">
						<img alt="" src="${pageContext.request.contextPath}/images/ad.jpg" style="width:100%; height:100%;">
						</div> --%>
						
				</div>
				


						
			</section>
		</div>
	</section>

	<!-- Footer -->

	<!-- Scripts -->
	<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.poptrox.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- 슬라이드 js -->
	<script src="https://unpkg.com/swiper@6.5.0/swiper-bundle.min.js"></script>

	
	<script>
		$('.posterTag').on('mouseover', function(){
			//event.stopPropagation();
			$(this).children('#detailText').css('display', 'block');
			$(this).children('#detailText').toggleClass("on");
		})
		
		$('.posterTag').on('mouseout', function(){
			$(this).children('#detailText').css('display', 'none');
			$(this).children('#detailText').toggleClass("on");
		})
	
		$('.moveBtn').on('mouseover', function(){
			$(this).toggleClass("btnMouseOver");
		})
		$('.moveBtn').on('mouseout', function(){
			$(this).toggleClass("btnMouseOver");
		})
		
		$('.detailText').on('click', function(){
			
		});
		
		if(window.matchMedia('(max-width: 736px)').matches){}
		
		
		var swiper = new Swiper('.swiper-container', {
			spaceBetween : 10,
			loop : false,
			loopFillGroupWithBlank : true,
			allowTouchMove: false,
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			breakpoints : { // 반응형 설정이 가능 width값으로 조정
				768: {
					slidesPerView : 5,
					slidesPerGroup : 5
				},
				1: {
					slidesPerView : 3,
					slidesPerGroup : 3
				}
			}
		});

		//poptrox
		$(function() {
			$('#gallery').poptrox({
				usePopupCaption : true,
				usePopupNav : true,
				popupPadding : 0
			});
		});
	</script>
	
</body>
</html>