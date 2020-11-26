<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp"%>
	<%@include file="/WEB-INF/jsp/base/basejs.jsp"%>
	<title>ssm数据备份</title>

	<style>
		
	</style>
</head>
<body>
	<div class="container-fluid">
		<div>
			<span>输入导出文件夹</span>
			<input id="out" type="text" value="" />
		</div>
		<div>
			<button class="btn btn-primary" onclick="dbback()">确定</button>
		</div>
	</div>

	<script type="text/javascript">
		function dbback(){
			let dir = $("#out").val();
			if (dir == "") {
				lightyear.notify('请输入文件夹路径！', 'danger', 'animated bounceIn', 'animated bounceOut', 100, 'top', 'center');
				$("#out").focus();
				return false;
			}
			lightyear.loading('show');
			$.ajax({
				type : "post",
				url : "<%=basePath%>dbback/dbback",
				data : {
					"out" : dir
				},
				success : function(data) {
					lightyear.loading('hide');
					if (data.status == '200') {
						lightyear.notify('备份成功！', 'success', 'animated bounceIn', 'animated bounceOut', 100, 'top', 'center');
					} else {
						lightyear.notify('备份失败！', 'danger', 'animated bounceIn', 'animated bounceOut', 100, 'top', 'center');
					}
				}
			});
		}

	</script>
</body>
</html>