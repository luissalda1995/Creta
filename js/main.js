
$(document).ready(function() {

	$(window).scroll(function(){
		var top = $('#home-page-tabs').offset().top;
		//var top2 = $('html').scrollTop();
		var top2 = window.pageYOffset;
		// var top2 = Math.max(
		// 	document.body.scrollHeight, document.documentElement.scrollHeight,
		// 	document.body.offsetHeight, document.documentElement.offsetHeight,
		// 	document.body.clientHeight, document.documentElement.clientHeight
		// );
		var top3 = $('.tab-content').offset().top;

		if (top2 > top) {
			$('#home-page-tabs').addClass('fixed');
			//console.log(5);
		} else if (top2 < top3) {
			$('#home-page-tabs').removeClass('fixed');
		}
	});

});