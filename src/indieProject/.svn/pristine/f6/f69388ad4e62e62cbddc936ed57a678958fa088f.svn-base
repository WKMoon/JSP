/**
 * 
 */

function step1(){
	$('#step1').show();
	$('#s1').css("color", "#4fc2cd");
	$('#step2').hide();
	$('#s2').css('color', '#616161');
	$('#step3').hide();
	$('#s3').css('color', '#616161');
}

function step2(){
	$('#step1').hide();
	$('#s1').css("color", "#616161");
	$('#step2').show();
	$('#s2').css('color', '#4fc2cd');
	$('#step3').hide();
	$('#s3').css('color', '#616161');
	
}

function step3(){
	$('#step1').hide();
	$('#s1').css("color", "#616161");
	$('#step2').hide();
	$('#s2').css('color', '#616161');
	$('#step3').show();
	$('#s3').css('color', '#4fc2cd');	
}
				
$.datepicker.setDefaults({
    dateFormat: 'yy.mm.dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: ' 년 ',
   	changeYear: true,
   	changeMonth: true
});

$("#datepicker").datepicker();

$(document).ready(function(){
	  //Show contextmenu:
  $("#poster").on("mouseover", function(e){
    //Get window size:
    var winWidth = $(document).width();
    var winHeight = $(document).height();
    //Get pointer position:
    var posX = e.pageX;
    var posY = e.pageY;
    //Get contextmenu size:
    var menuWidth = $("#posterHelp").width();
    var menuHeight = $("#posterHelp").height();
    //Security margin:
    var secMargin = 10;
    //Prevent page overflow:
    if(posX + menuWidth + secMargin >= winWidth
    && posY + menuHeight + secMargin >= winHeight){
      //Case 1: right-bottom overflow:
      posLeft = posX - menuWidth - secMargin + "px";
      posTop = posY - menuHeight - secMargin + "px";
    }
    else if(posX + menuWidth + secMargin >= winWidth){
      //Case 2: right overflow:
      posLeft = posX - menuWidth - secMargin + "px";
      posTop = posY + secMargin + "px";
    }
    else if(posY + menuHeight + secMargin >= winHeight){
      //Case 3: bottom overflow:
      posLeft = posX + secMargin + "px";
      posTop = posY - menuHeight - secMargin + "px";
    }
    else {
      //Case 4: default values:
      posLeft = posX + secMargin + "px";
      posTop = posY + secMargin + "px";
    };
    //Display contextmenu:
    $("#posterHelp").css({
      "left": posLeft,
      "top": posTop
    }).show();
    //Prevent browser default contextmenu.
    return false;
  });
  //Hide contextmenu:
  $("#poster").on("mouseout", function(){
    $("#posterHelp").hide();
  });
});

$(document).on("click", ".camera", function(){
	var poster = "<div class='col-2 col-3-small poster' style='padding-left:0;'>"
		+"<span class='image fit' style='padding-bottom:30%;'>"
		+ "<img class='camera' src='"+contextPath+"/images/add.png' alt='영화 포스터' style='width:50px; margin:47% auto auto auto;cursor:pointer;'/>"
		+"</span></div>";
	
	$(".poster").parent().append(poster);
});

$(document).on("click", ".camera2", function(){
	var stillcut = "<div class='col-2 col-3-small stillcut' style='padding-left:0;'>"
		+"<span class='image fit' style='padding-bottom:30%;'>"
		+ "<img class='camera2' src='"+contextPath+"/images/add.png' alt='영화 포스터' style='width:50px; margin:47% auto auto auto;cursor:pointer;'/>"
		+"</span></div>";
	
	$(".stillcut").parent().append(stillcut);
});

$(document).on("click", "#addMaker", function(){
	var duty = "<input type='text' name='duty' id='' value=''/>	";
	var name = "<input type='text' name='makerName' id='' value=''/>";
	var button = "<a href='#' class='button alt small' id='deleteMaker'>삭제</a>"
	
	var newMaker="<div class='row maker'><div class='col-custom col-2-medium col-12-small' style='margin-left: auto;'></div>"+
				"<div style='padding-bottom:0;' class='col-2 col-3-medium col-5-small duty'><input type='text' name='' id='' value='' /></div>"+
				"<div style='padding-bottom:0;' class='col-2 col-3-medium col-5-small makerName'><input type='text' name='' id='' value='' /></div>"+
				"<div class='col-1 col-2-small' style='margin-right: auto; padding:0;'><a class='button alt small' id='deleteMaker' style='width:100%'>삭제</a></div></div>"
	
	//$(".duty").append(duty);
	//$(".makerName").append(name);
	$(this).parent().parent().parent().append(newMaker);
});

$(document).on("click", "#deleteMaker", function(){
	//$(".duty input:last-child").remove();
	//$(".makerName input:last-child").remove();
	//$("#deleteMaker").remove();
	$(this).parent().parent().remove();
});

$(document).on("click", "#addActor", function(){
	var cast = "<input type='text' name='cast' id='' value=''/>	";
	var actor = "<input type='text' name='actorName' id='' value=''/>";
	var button = "<a href='#' class='button alt small' id='deleteActor'>삭제</a>"
	
	var newActor="<div class='row actor'><div class='col-custom col-2-medium col-12-small' style='margin-left: auto;'></div>"+
				"<div style='padding-bottom:0;' class='col-2 col-3-medium col-5-small duty'><input type='text' name='' id='' value='' /></div>"+
				"<div style='padding-bottom:0;' class='col-2 col-3-medium col-5-small makerName'><input type='text' name='' id='' value='' /></div>"+
				"<div class='col-1 col-2-small' style='margin-right: auto; padding:0;'><a class='button alt small' id='deleteActor' style='width:100%'>삭제</a></div></div>"
	
	//$(".cast").append(cast);
	//$(".actorName").append(actor);
	$(this).parent().parent().parent().append(newActor);
});

$(document).on("click", "#deleteActor", function(){
	//$(".cast input:last-child").remove();
	//$(".actorName input:last-child").remove();
	//$("#deleteActor").remove();
	
	$(this).parent().parent().remove();
});
