$(function(){

	$('#picker1').colpick();
	
	$('.ex-color-box').colpick({
		colorScheme:'dark',
		layout:'rgbhex',
		color:'ff8800',
		livePreview:0,
		onSubmit:function(hsb,hex,rgb,el) {
			$(el).css('background-color', '#'+hex);
			$(el).colpickHide();
		}
	})
	.css('background-color', '#ff8800');
});