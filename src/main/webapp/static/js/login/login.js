$(function() {
	var location = (window.location+'').split('/');
	var basePath = location[0]+'//'+location[2]+'/'+location[3];
	
	$('.imgcode').click(function() {
		var url = basePath + "/captcha/captchaImage?s=" + Math.random();
		$(".imgcode").attr("src", url);
	});
});

// 登录
$('#btnSubmit').click(function() {
	
	let username = $.trim($("input[name='logname']").val());
	let password = $.trim($("input[name='logpass']").val());
	let validateCode = $.trim($("input[name='logcaptcha']").val());
	
	if ('' == username) {
		$("input[name='logname']").tooltip('show');
		const t1 = window.setTimeout(function(){
			$("input[name='logname']").tooltip('destroy');
			window.clearTimeout(t1);
		}, 3000);
		
		return false;
	}
	
	
});

