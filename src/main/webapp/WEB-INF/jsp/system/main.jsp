<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basejs.jsp" %>
	<title>ssm网</title>
	
	<link rel="stylesheet" type="text/css" href="static/css/base/jquery.scrollbar.css">
	<link rel="stylesheet" type="text/css" href="static/css/nth-tabs/nth-tabs.min.css">
	<link rel="stylesheet" type="text/css" href="static/css/nth-tabs/nth-icons.css">
	<link rel="stylesheet" type="text/css" href="static/css/base/font-awesome.min.css">
	
	<script type="text/javascript" src="static/js/base/jquery.scrollbar.min.js"></script>
	<script type="text/javascript" src="static/js/nth-tabs/nth-tabs.js"></script>
	<style>
        .wrapper {
            padding-top: 10px;
            height: calc(100% - 220px);
        }

        .page-wrapper {
            overflow: hidden;
            height: 100%;
        }
    </style>
</head>
<body>
	
	<div class="wrapper">
		<div class="page-wrapper">
	        <!--使用时只需此标签，class固定,id自己定义-->
	        <div class="nth-tabs" id="main-tabs">
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">
		var nthTabs;
		
		$(function () {
            //基于bootstrap tab的自定义多标签的jquery实用插件
            nthTabs = $("#main-tabs").nthTabs();
			
            // 新建选项卡示例
            nthTabs.addTab({
                id: 'home',
                title: '首页',
                url: "",
                //content: '这是首页内容',
                active: true,
                allowClose: false
            });

            // 选项卡切换事件处理器
            nthTabs.tabToggleHandler(function (data) {
                //console.log(data);
            });

        });
	</script>
</body>
</html>