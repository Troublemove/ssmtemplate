<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basejs.jsp" %>
	<title>登录</title>
	
	<link rel="stylesheet" type="text/css" href="static/css/login/normalize.css">
	<link rel="stylesheet" type="text/css" href="static/css/login/login.css">
	<!--必要样式-->
	<link rel="stylesheet" type="text/css" href="static/css/login/component.css">
	
	<script language="JavaScript"> 
	</script>
</head>
<body>
	<div class="loginDiv">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h3>登录</h3>
					<div id="loginForm">
						<div class="input_outer">
							<span class="u_user"></span>
							<input name="logname" class="text" value="" type="text" placeholder="请输入用户名" data-toggle="tooltip" data-placement="right" title="用户不存在">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span>
							<input name="logpass" class="text" type="password" value="" placeholder="请输入密码" data-toggle="tooltip" data-placement="right" title="请输入有效密码">
						</div>
						<div>
							<div class="input_outer" style="width:48% !important;float: left;">
								<input name="logcaptcha" class="text" value="" type="text" maxlength="4" placeholder="验证码" data-toggle="tooltip" data-placement="right" title="请输入验证码">
							</div>
							<a href="javascript:void(0);" title="点击更换验证码">
								<img class="imgcode" src="captcha/captchaImage" width="45%" height="46px" style="margin-left:15px;">
							</a>
						</div>
						<button class="btn btn-success btn-block" id="btnSubmit" onclick="tologin()" data-loading-text="登录中...">登录</button>
						<button class="btn btn-warning btn-block" id="btnRegister" onclick="toRegister">注册</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="static/js/login/TweenLite.min.js"></script>
	<script type="text/javascript" src="static/js/login/EasePack.min.js"></script>
	<script type="text/javascript" src="static/js/login/rAF.js"></script>
	<script type="text/javascript" src="static/js/login/bgpoint.js"></script>
	<script type="text/javascript" src="static/js/login/login.js"></script>
</body>
</html>