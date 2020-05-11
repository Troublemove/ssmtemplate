$(function() {
	var location = (window.location+'').split('/');
	var basePath = location[0]+'//'+location[2]+'/'+location[3];
	
	$('.imgcode').click(function() {
		var url = basePath + "/captcha/captchaImage?s=" + Math.random();
		$(".imgcode").attr("src", url);
	});
});

