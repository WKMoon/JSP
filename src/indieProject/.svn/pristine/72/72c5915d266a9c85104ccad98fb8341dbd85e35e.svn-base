<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<style>
fieldset {
	border-radius: 7%;
	margin: 0 auto;
	padding-right: 0%;
}

.poster {
	border: dotted;
	/* width: 100%;
	height: 70%; */
}

.image.fit {
	margin: 0 0;
}
@media screen and (max-width: 480px) {
	.button {
		padding: 0 32px !important;
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
				<h2>게시글 작성</h2>
				<p>작성된 게시글은 자유 게시판에 등록됩니다.</p>
			</header>
			<div class="row">
				<!-- Text -->
				<div class="col-8 col-10-medium col-12-small" style="margin: 0 auto;">
					<fieldset
						style="border: solid; border-style: outset; padding-left: 4%; padding-top: 4%; padding-bottom: 4%; padding-right: 4%;">
						<br>
						<section style="margin-right: auto; margin-left: auto;">
							<form action="${pageContext.request.contextPath}/board/BoardWriteOk.bo" method="post" name="boardForm" enctype="multipart/form-data">
								<div class="photos" style="display: flex;">
									<div class="col-4 col-3-small photo"
										style="text-align: center; margin-right: auto; margin-left: auto; width: 40%;">
										<div class="poster image fit"
											style="padding-left: 0;">
											<img id="firstImg" class="img" alt="" src=""
												style="display: none; width: 100%; height: 100%;"> 
											<span
												id="span1" class="image fit" style="padding-bottom: 30%;">
												<label for="first-file-input"> <img id="firstImg2"
													class="camera"
													src="${pageContext.request.contextPath}/images/add.png"
													alt="영화 포스터"
													style="width: 50px; margin: 47% auto auto auto; cursor: pointer;" />
												</label> 
												<input name="boardImage1" id="first-file-input" type="file"
												onchange="preview1()" style="display: none;" />
											</span>
		
										</div>
										<a href="#" onclick="delete1()">삭제</a>
									</div>
		
									<div class="col-4 col-3-small photo"
										style="text-align: center; margin-right: auto; margin-left: auto; width: 40%;">
										<div class="poster image fit"
											style="padding-left: 0;">
											<img id="secondImg" alt="" src="" class="img"
												style="display: none; width: 100%; height: 100%;"> <span
												id="span2" class="image fit" style="padding-bottom: 30%;">
												<label for="second-file-input"> <img id="secondImg2"
													class="camera"
													src="${pageContext.request.contextPath}/images/add.png"
													alt="영화 포스터"
													style="width: 50px; margin: 47% auto auto auto; cursor: pointer;" />
												</label> 
												<input name="boardImage2" id="second-file-input" type="file"
												onchange="preview2()" style="display: none;" />
											</span>
		
										</div>
										<a href="#" onclick="delete2()">삭제</a>
									</div>
									<div class="col-4 col-3-small photo"
										style="text-align: center; margin-right: auto; margin-left: auto; width: 40%;">
										<div class="poster image fit"
											style="padding-left: 0;">
											<img id="thirdImg" alt="" src="" class="img"
												style="display: none; width: 100%; height: 100%;"> <span
												id="span3" class="image fit" style="padding-bottom: 30%;">
												<label for="third-file-input"> <img id="thirdImg2"
													class="camera"
													src="${pageContext.request.contextPath}/images/add.png"
													alt="영화 포스터"
													style="width: 50px; margin: 47% auto auto auto; cursor: pointer;" />
												</label> 
												<input name="boardImage3" id="third-file-input" type="file"
												onchange="preview3()" style="display: none;" />
											</span>
		
										</div>
										<a href="#" onclick="delete3()">삭제</a>
									</div>
		
								</div>
								<div>
									<h3>문구입력</h3>
									<textarea name="boardContent" maxlength="50"
										style="width: 100%; resize: none; margin-left: auto; margin-right: auto; margin-bottom: 1%;"></textarea>
									<div id="count">
										<span id="current_count">0</span> <span id="maximum_count">/
											50</span> 
									<a href="javascript: boardForm.submit();" class="button" style="float: right;">업로드</a>
									</div>
								</div>
							</form>
						</section>
					</fieldset>
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

	<script>
		function preview1() {

			firstImg.src = URL.createObjectURL(event.target.files[0]);
			firstImg.style.display = "block";
			firstImg.style.objectFit = "cover";
			span1.style.display = "none";

		}
		function preview2() {
			if (window.getComputedStyle(firstImg).display == "block") {
				secondImg.src = URL.createObjectURL(event.target.files[0]);
				secondImg.style.display = "block";
				secondImg.style.objectFit = "cover";

				span2.style.display = "none";
			} else {
				alert("첫번째 앨범을 채워주세요.");
			}

		}
		function preview3() {
			if (window.getComputedStyle(secondImg).display == "block") {
				thirdImg.src = URL.createObjectURL(event.target.files[0]);
				thirdImg.style.display = "block";
				thirdImg.style.objectFit = "cover";

				span3.style.display = "none";
			} else {
				alert("두번째 앨범을 채워주세요.");
			}
		}

		function delete1() {
			firstImg.style.display = "none";
			span1.style.display = "block";
		}
		function delete2() {
			secondImg.style.display = "none";
			span2.style.display = "block";
		}
		function delete3() {
			thirdImg.style.display = "none";
			span3.style.display = "block";
		}

		$('textarea')
				.keyup(
						function() {
							var characterCount = $(this).val().length, current_count = $('#current_count'), maximum_count = $('#maximum_count'), count = $('#count');

							current_count.text(characterCount);

						});
	</script>
</body>
</html>