<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
		
		@media screen and (max-width: 980px) {
			#sidebarDiv {
				display: none;
			}
		
		}
		
@media screen and (max-width: 1280px){
	
	.col-poster{
		margin-left: auto !important;
		margin-right: auto !important;
	}
}		


		
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
	<c:set var="boards" value="${myBoardList}"/>
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
									<h2>내가 올린 게시글</h2>
									<p>자유게시판에 올린 내 게시글들을 모아 볼 수 있습니다.</p>
								</header>
							<div id="gallery" style="text-align: center;">
																
								<fieldset style="padding-left:5%;  margin-bottom: 0; border-width: 3px; background:white;">
								<div class="row" style=" width:100%;">
								<c:choose>
									<c:when test="${boards != null and fn:length(boards) > 0}">
										<c:forEach var="b_vo" items="${boards}">
											<div class="col-poster" style="width:30%; height:10%; margin:10px;">
												<div class="image fit posterTag" style="margin-bottom: 0px;">
													<img src="${pageContext.request.contextPath}/images/board/${b_vo.getBoardImage()}" alt=""
														style="" />
													<div id="detailText"
														style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
														<a class="button primary small" href="${pageContext.request.contextPath}/board/BoardView.bo?boardNum=${b_vo.getBoardNum()}"
															data-poptrox="iframe,800x500"
															style="width:80%; height:100%; background:transparent;">
															<c:out value="${b_vo.getBoardContent()}"/>
														</a>
													</div>
												</div>
												<a href="#" data-poptrox="ignore" style="text-decoration: none; float:right;">[삭제]</a>								
												<a href="#" data-poptrox="ignore" style="text-decoration: none; float:right;">[수정]</a>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<h4>내가 올린 게시글이 없습니다.</h4>
									</c:otherwise>
								</c:choose>
								
								<div class="col-poster" style="width:30%; height:10%; margin:10px;">
									<div class="image fit posterTag" style="margin-bottom: 0px;">
										<img src="${pageContext.request.contextPath}/images/testImage.jpg" alt=""
											style="" />
										<div id="detailText"
											style="padding: 5px; display: none; position: absolute; top: 0; left: 0; bottom: 0; right: 0; color: white; background-color: rgba(0, 0, 0, 0.69); border-radius: 10px;">
											
											<a class="button primary small" href="${pageContext.request.contextPath}/app/board/boardView.jsp"
												data-poptrox="iframe,800x500"
												style="width:80%; height:100%; background:transparent;">
												여따가 쓰는 거냐고
											</a>
										</div>
									</div>
								<a href="#" data-poptrox="ignore" style="text-decoration: none; float:right;">[삭제]</a>								
									
								<a href="#" data-poptrox="ignore" style="text-decoration: none; float:right;">[수정]</a>								
									
								</div>
								
								</div>
								</fieldset>
								
								
								</div>
								
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
		<script>$("#mb").css("background", "rgba(144, 144, 144, 0.075)");</script>
		
		<script>
			if(window.matchMedia('(max-width: 9999px)').matches){
			}
		</script>
		
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