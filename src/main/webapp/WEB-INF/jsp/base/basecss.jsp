<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">
<link rel="stylesheet" href="static/css/base/bootstrap.min.css">
<link rel="stylesheet" href="static/css/base/loading.css">
<!-- 警告提示动画效果（要3.5.1） -->
<link rel="stylesheet" href="static/css/base/animate3.5.1.min.css">

<%--兼容手机端--%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<style>
	button[data-notify="dismiss"] {
		top: 15px !important;
	}
	span[data-notify="message"] {
		margin-left: 10px;
		font-size: 15px;
	}
</style>