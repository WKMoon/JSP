/**
 * proMovie js파일
 */

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
			allowTouchMove: true,
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			breakpoints : { // 반응형 설정이 가능 width값으로 조정
				737: {
					slidesPerView : 5,
					slidesPerGroup : 5
				},
				981: {
					slidesPerView : 6,
					slidesPerGroup : 6
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