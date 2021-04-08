<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인디프로젝트</title>
</head>
<style>
	#floatMenu {
		position:absolute;
		width:18%;
	}
</style>
<body>
	<div id="sidebarDiv" class="col-3 col-12-medium" style="order:-2;">
		<fieldset id="floatMenu" style="border:solid; padding:10px; border-radius: 10px; display:block; border-width: 3px;">
			<!-- Sidebar -->
			<section id="sidebar">
					<h3>나의 인디프로젝트</h3>
					<ul class="actions stacked">
						<li><a id="my" href="${pageContext.request.contextPath}/member/memberMyPage.me" class="button small alt">마이페이지</a></li>
						<li><a id="ci" href="${pageContext.request.contextPath}/member/memberChnageInfo.me" class="button small alt">내 정보 수정</a></li>
						<li><a id="mp" href="${pageContext.request.contextPath}/member/memberMyPopcorn.me" class="button small alt">나의 팝콘</a></li>
						<li><a id="mm" href="${pageContext.request.contextPath}/member/memberMyMovie.me" class="button small alt">내가 올린 영화</a></li>
						<li><a id="mr" href="${pageContext.request.contextPath}/member/memberMyReview.me" class="button small alt">내가 쓴 감상평</a></li>
						<li><a id="mb" href="${pageContext.request.contextPath}/member/memberMyBoard.me" class="button small alt">내가 올린 게시글</a></li>
						<li><a id="mrp" href="${pageContext.request.contextPath}/member/memberMyReply.me" class="button small alt">내가 쓴 댓글</a></li>
					</ul>
			</section>
		</fieldset>
	</div>
</body>
</html>