<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html>
	<head>
		<title>인디프로젝트</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<style>

.button {
	width: 100%;
}

li {
	padding: 0 0 !important;
}

@media screen and (max-width: 1200px) {

}



@media screen and (max-width: 760px) {
	#sidebarDiv {
		display: none;
	}
	.main {
		float: left !important;
		width: 100% !important;
		/* postion:static !important */;
	}

	/*팝콘 그림 부분  */
	#popcorn_main {
		margin-bottom: 120% !important;
		width: 88% !important;
		height: 736px !important;
		margin-left: 10% !important;
	}

	/* 팝콘 충전 div*/
	.popcorn_add {
		top: 788px !important;
		width: 90% !important;
		left: 28px !important;
		height: 31% !important;
	}

	/*  팝콘충전 내용*/
	.popcorn_menu {
		width: 100% !important;
	}

	/*  팝콘 환전*/
	.popcorn_money {
		width: 90% !important;
		height: 13% !important;
		top: 1322px !important;
		margin-left: 0 !important;
		left: 26px !important;
		padding: 5% !important;
	}
	.popcoen_give {
		float: left !important;
	}
	.popcorn_box {
		width: 36% !important;
		margin-left: 8% !important;
	}
	.popcoen_give {
		margin-top: 7% !important;
	}
	.img {
		width: 97% !important;
	}
}


@media screen and (max-width: 480px) {
	#sidebarDiv {
		display: none;
	}
	.popcorn_add {
		top: 597px !important;
		width: 90% !important;
		left: 28px !important;
		height: 31% !important;
	}
	.popcorn_money {
		width: 90% !important;
		height: 14% !important;
		top: 988px !important;
		margin-left: 0 !important;
		left: 26px !important;
		padding: 5% !important;
	}
	#popcorn_main {
		margin-bottom: 120% !important;
		width: 88% !important;
		height: 619px !important;
		margin-left: 10% !important;
	}
	.text{
	font-size:30px !important;
	}

	.date{
		width:100% !important;
	}
}
</style>
	<body class="is-preload">
      
      <c:if test="${myPopcornNum ne null}">
      	<c:set var="myPopcornNum" value="${myPopcornNum}"/>
      </c:if>
      <c:if test="${myPopcornNum eq null}">
      	<c:set var="myPopcornNum" value="0"/>
      </c:if>
      
       <c:if test="${myReceivedPopcornNum ne null}">
      <c:set var="myReceivedPopcornNum" value="${myReceivedPopcornNum}"/>
      </c:if>
      <c:if test="${myReceivedPopcornNum eq null}">
      	<c:set var="myReceivedPopcornNum" value="0"/>
      </c:if>
      

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
									<p>나의 팝콘 정보</p>
								</header>
							
								<hr style="margin-bottom:0;">
								<fieldset class="main" style="padding: 5%; border-radius: 10px; background-color:#e6e6d6; position:relative;">
									<div style="height:60px;">
										<div style="float: left;"><h2 style="margin-bottom:0;"><c:out value="${myName}"/> 고객님의 팝콘</h2></div>
									</div>
								
									<div  class="popcorn_add" style="background-color:white;position:absolute; top:5%; left:50%; width:45%;height:60%; padding:3%; border-radius:3%;">
									<h1 style="margin-bottom:0%;">팝콘 충전</h1>
										<hr style="margin-bottom:0; margin-top:5%; margin-bottom:4%;">
									<div class="popcorn_menu">
										<div style="display: flex;">
											<img
												src="${pageContext.request.contextPath}/images/smallpopcorn.png"
												style='display: inline-block; width: 19%;' > <span
												style="font-weight: 700; margin-top: 5%;">X 10개</span>
												<div style="display:inline-block; text-align: center;">
													<a href="#" class="button primary small"
														style="margin-left: 132%; margin-top:10%; width:109%;">1,000원</a>
											</div>
										</div>
								

										<div style="display: flex;">
											<img
												src="${pageContext.request.contextPath}/images/smallpopcorn.png"
												style='display: inline; width: 19%;'> <span
												style="font-weight: 700; margin-top: 5%;">X  50개</span>
												<div style="display:inline-block; text-align: center;">
												 <a
												href="#" class="button primary small"
												style="margin-left: 131%; margin-top:10%; width:109%;">5,000원</a>
										
												</div>
										</div>

										<div style="display: flex;">
											<img
												src="${pageContext.request.contextPath}/images/smallpopcorn.png"
												style='display: inline; width: 19%;'> <span
												style="font-weight: 700; margin-top: 5%;">X 100개</span> 
												<div style="display:inline-block; text-align: center;">
												<a
												href="#" class="button primary small"
												style="margin-left: 115%;margin-top:10%; ">10,000원</a>
												</div>
										</div>

										<div style="display: flex;">
											<img
												src="${pageContext.request.contextPath}/images/smallpopcorn.png"
												style='display: inline; width: 19%;'> <span
												style="font-weight: 700; margin-top: 5%;">X  500개</span>
											<div style="display:inline-block; text-align: center;">
												<a
												href="#" class="button primary small"
												style="margin-left: 115%; margin-top:10%;">50,000원</a>
										
												</div>
										</div>
									</div>
								</div>
						<!--"popcorn_add"  -->

								<div class="popcorn_money"
									style="background-color: white; position: absolute; top: 67%; left: 50%; width: 45%; height: 30%; padding: 3%; border-radius: 3%;">
									<h1>환전가능한 팝콘 : 1000개</h1>
									<ul style="margin: 3%;">
										<li>100개 이상부터 환전 가능</li>
									</ul>
									<div style="display: flex;">
										<input type="text" name="change_popcorn" id="change_popcorn"
											placeholder="팝콘갯수" style="width: 70%; display: inline;" />
										<div style="display: inline-block; text-align: center;">
											<a href="#" class="button primary small">환전하기</a>
										</div>
									</div>
								</div>
							<!--  popcorn_money"-->

							<div id="popcorn_main">
									<div id="img_popcorn_head">
								<img alt=""
									src="${pageContext.request.contextPath}/images/popcornhead.png" class="img">
							</div>
									<div  class="my_popcorn">
										<div style="display:inline-block; vertical-align: text-bottom;">
										</div>
								 <div class="popcorn_box" style="display:inline-block;  text-align: center; border:solid; border-radius:10px; padding: 10px; vertical-align: text-bottom; background-color:#ebd490;">
											<h3 style="font-size: 1.5em;" class="text">보유 팝콘</h3>
											<h4><c:out value="${myPopcornNum}"/>개</h4>
										</div>
										
										<div class="popcorn_box" style="display:inline-block;  margin-left:30px; text-align: center; border:solid; border-radius: 10px; padding:10px; vertical-align: text-bottom;background-color:#ebd490;">
											<h3 style="font-size: 1.5em;" class="text">받은 팝콘</h3>
											<h4><c:out value="${myReceivedPopcornNum}"/>개</h4>
										</div>
										
										<div id="img_popcorn_body">
										<img alt="" src="${pageContext.request.contextPath}/images/popcornbody.png" class="img">
										</div>  
									</div>
							</div>
							
							</fieldset>
							
							<div class="popcoen_give" style="margin-top:5%;">
									<h2 style="color:black;">후원내역 조회</h2>
									<ul>
									<li style="color:black;">이미 후원한 금액은 다시 환불 할 수 없습니다</li>
									</ul>
							</div>
							<div class="date">
						<fieldset  style="padding: 3%; margin-bottom: 5%; border-width: 3px; background:#8080800f;">
							<form name="해당 폼의 이름" style="margin:0;" action="" method="post">
									<p style="margin:0;float:left; margin-top:1%; font-weight:bold; margin-left:6%;">조회기간</p>
							<div style="display:flex;">
								<input type='date' name='date1' id='date1' style="margin-left:5%; width:230px; border:1px solid #d8d9db; padding:0 10px;" value=''/>
								<span style="font-weight:900; font-size:25px;">~</span>
								<input type='date' name='date2' id='date2' style="display:inline;  width:230px;  border:1px solid #d8d9db; padding:0 10px;"value='' />
										<a href="javascript:search();" class="button alt small fit" style="width:20%;">조회</a>
									</div>
							</form>
						</fieldset>
						</div>
						<div id="popchon_table">
						<table style="margin-bottom: 0;" id="table">
										<thead>
											<tr>
												<th>번호</th>
												<th>영화제목</th>
												<th>후원받은아이디</th>
												<th>금액</th>
												<th>팝콘갯수</th>
												<th>후원날짜</th>
											</tr>
										</thead>
	 											
											<tr id="popCornTr">

											</tr>
										
										</tbody>
									</table>

						</div>
						
							</section>
						</div>
					</div>
				</div>
			</section>

		<!-- Footer -->
		<jsp:include page="${pageContext.request.contextPath}/../footer.jsp" />

		<!-- Scripts -->
		<script>var contextPath = "${pageContext.request.contextPath}";</script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.poptrox.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/floatMenu.js"></script>
		<script>$("#mp").css("background", "rgba(144, 144, 144, 0.075)");</script>
		
		<script>
			if(window.matchMedia('(max-width: 9999px)').matches){
			}
		</script>
		<script>
			function search(){
				var date1 = document.getElementById("date1").value.toString();
				var date2 = document.getElementById("date2").value.toString();
				var newDate1 = new Date(date1);
				var newDate2 = new Date(date2);
				console.log(newDate1.getTime());
				console.log(newDate2.getTime());
				if(date1 == "" || date2 == ""){
					alert("기간이 올바르지 않습니다.");
					return false;
				}
				else if(newDate2.getTime() <= newDate1.getTime()){
					alert("기간이 올바르지 않습니다.");
					return false;
				}
				else{
					
					console.log(date1);
					console.log(date2);
					$.ajax({
						url: contextPath + "/member/MemberMyPopcornDateSearchAction.me",
					    type: "POST",
						data: {"date1" : date1,"date2" :date2},
						dataType: "text",
						success:function(result){
							var table = document.getElementById("table");							
							if(result.trim() != null){
								console.log("if 들어옴");
								console.log(result + "result");
								var k = 1;

								for(let i = 0; i < result.length; i++){
									var popCorn = result.trim().split(",");
									
									var row = table.insertRow(i+1);
									
									console.log(popCorn);
									var popCornEl;
									for (let j = 0; j < popCorn[i].length; j++) {
										console.log("for 들어옴");
										popCornEl = popCorn[i].split("+");
										

										

									}
									  var cell1 = row.insertCell(0);
									  var cell2 = row.insertCell(1);
									  var cell3 = row.insertCell(2);
									  var cell4 = row.insertCell(3);
									  var cell5 = row.insertCell(4);
									  var cell6 = row.insertCell(5);
									  cell1.innerHTML = k;
									  cell2.innerHTML = popCornEl[0];
									  cell3.innerHTML = popCornEl[1];
									  cell4.innerHTML = popCornEl[2] * 1000;
									  cell5.innerHTML = popCornEl[3];
									  cell6.innerHTML = popCornEl[4];
									k++;
								}
							}else{
								popCornTr.innerHTML = "후원 내역이 업습니다.";
							}
						},
						error:function(data){
					    	  console.log(data);
					    	console.log("기간 조회 오류");
					    }
					});
				}
				
			}
		</script>
		
	</body>
</html>