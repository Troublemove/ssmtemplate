var basePath = "";

$(function() {
	var location = (window.location + '').split('/');
	basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';

	$('.imgcode').click(function() {
		var url = basePath + "captcha/captchaImage?s=" + Math.random();
		$(".imgcode").attr("src", url);
	});
});

$(document).keydown(function(event) {
	// 回车登录
	if (event.keyCode == 13) {
		tologin();
	}
});

// 登录
function tologin() {
	let logname = $.trim($("input[name='logname']").val());
	let logpass = $.trim($("input[name='logpass']").val());
	let logcaptcha = $.trim($("input[name='logcaptcha']").val());

	if ('' == logname) {
		$("input[name='logname']").tooltip('show');
		const t1 = window.setTimeout(function() {
			$("input[name='logname']").tooltip('destroy');
			window.clearTimeout(t1);
		}, 3000);

		return false;
	}
	if ('' == logpass) {
		$("input[name='logpass']").tooltip('show');
		const t2 = window.setTimeout(function() {
			$("input[name='logpass']").tooltip('destroy');
			$("input[name='logpass']").val("");
			window.clearTimeout(t2);
		}, 3000);

		return false;
	}
	if ('' == logcaptcha) {
		$("input[name='logcaptcha']").tooltip('show');
		const t3 = window.setTimeout(function() {
			$("input[name='logcaptcha']").tooltip('destroy');
			window.clearTimeout(t3);
		}, 3000);

		return false;
	}
	
	var $btn = $('#btnSubmit').button('loading');
	setTimeout(function() {
		$btn.button("reset")
	}, 500)

	$.ajax({
		type : "post",
		url : basePath + "tologin",
		data : {
			"logname" : logname,
			"logpass" : logpass,
			"logcaptcha" : logcaptcha
		},
		success : function(data) {
			if (data.status == '200') {
				window.location.href = basePath + 'mainJsp';
			} else if (data.status == '250') {
				lightyear.notify('验证码输入错误！', 'danger', 'animated bounceIn', 'animated bounceOut', 100, 'bottom', 'right');
				$(".imgcode").attr("src", basePath + "captcha/captchaImage?s=" + Math.random());
				$("input[name='logcaptcha']").val("").focus();
			} else if (data.status == '300') {
				lightyear.notify('用户名或密码输入错误！', 'danger', 'animated bounceIn', 'animated bounceOut', 100, 'bottom', 'right');
				$("input[name='logname']").val("").focus();
				$("input[name='logpass']").val("");
				$("input[name='logcaptcha']").val("");
				$(".imgcode").attr("src", basePath + "captcha/captchaImage?s=" + Math.random());
			}
		}
	});
}
