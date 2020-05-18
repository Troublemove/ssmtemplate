var basePath = "";

$(function() {
	var location = (window.location+'').split('/');
	basePath = location[0]+'//'+location[2]+'/'+location[3] + '/';
	
	$('.imgcode').click(function() {
		var url = basePath + "captcha/captchaImage?s=" + Math.random();
		$(".imgcode").attr("src", url);
	});
});

// 登录
$('#btnSubmit').click(function() {
	
	let logname = $.trim($("input[name='logname']").val());
	let logpass = $.trim($("input[name='logpass']").val());
	let logcaptcha = $.trim($("input[name='logcaptcha']").val());
	
	if ('' == logname) {
		$("input[name='logname']").tooltip('show');
		const t1 = window.setTimeout(function(){
			$("input[name='logname']").tooltip('destroy');
			window.clearTimeout(t1);
		}, 3000);
		
		return false;
	}
	if ('' == logpass) {
		$("input[name='logpass']").tooltip('show');
		const t2 = window.setTimeout(function(){
			$("input[name='logpass']").tooltip('destroy');
			$("input[name='logpass']").val("");
			window.clearTimeout(t2);
		}, 3000);
		
		return false;
	}
	if ('' == logcaptcha) {
		$("input[name='logcaptcha']").tooltip('show');
		const t3 = window.setTimeout(function(){
			$("input[name='logcaptcha']").tooltip('destroy');
			window.clearTimeout(t3);
		}, 3000);
		
		return false;
	}
	
	$.ajax({
        type: "post",
        url: basePath + "login",
        data: {
            "logname": logname,
            "logpass": logpass,
            "logcaptcha": logcaptcha
        },
        success: function(data) {
        	window.location.href = 'mainJsp';
        }
    });
});


