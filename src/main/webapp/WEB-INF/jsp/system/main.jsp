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
	
	<script type="text/javascript" src="static/js/base/jquery.scrollbar.js"></script>
	<script type="text/javascript" src="static/js/nth-tabs/nth-tabs.js"></script>
	<style>
        html, body {
            padding: 0;
            margin: 0;
            height: 100%;
        }

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
	<div class="container wrapper">
		<div class="page-wrapper">
	        <!--使用时只需此标签，class固定,id自己定义-->
	        <div class="nth-tabs" id="main-tabs">
	        </div>
	    </div>
	</div>
	
	<script type="text/javascript">
		var nthTabs;
		
		$(function () {

            //一个低门槛的演示,更多需求看源码

            //基于bootstrap tab的自定义多标签的jquery实用插件
            nthTabs = $("#main-tabs").nthTabs();
			
            // 新建选项卡示例
            nthTabs.addTab({
                id: 'home',
                title: '首页',
                url: "http://www.baidu.com",
                //content: '这是首页',
                active: true,
                allowClose: false
            });

            // 连贯操作示例
            nthTabs.addTab({
                id: 'menu-manage',
                title: '菜单管理',
                active: false,
                content: '这是菜单管理页面~'
            }).addTab({
                id: 'role-manage',
                title: '角色管理',
                active: false,
                content: '这是角色管理页面~'
            });

            // 选项卡切换事件处理器
            nthTabs.tabToggleHandler(function (data) {
                console.log(data);
            });

        });
	</script>
</body>
</html>