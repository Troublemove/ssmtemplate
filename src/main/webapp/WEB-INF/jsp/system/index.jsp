<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basejs.jsp" %>
	<title>ssm测试首页展示</title>
	
	<!-- live2d -->
	<!-- <link rel="stylesheet" type="text/css" href="static/other/live2d/waifu.css"> -->
	<style type="text/css">
		* {
			margin: 0;
			padding: 0;
			list-style-type: none;
		}
		
		a, img {
			border: 0;
		}
		
		body {
			font: 12px/180% Arial, Helvetica, sans-serif, "新宋体";
		}
		/* container */
		#container {
			width: 940px;
			margin: 50px auto;
		}
		
		#container ul {
			width: 300px;
			list-style: none;
			float: left;
			margin-right: 20px;
		}
		
		#container ul li {
			margin-bottom: 20px;
		}
		
		#container ul li img {
			width: 300px;
		}
	</style>
</head>
<body>
	<div id="container">
		<ul class="col">
			<li><img src="static/img/index/0.jpg" alt=""/></li>
			<li><img src="static/img/index/1.jpg" alt=""/></li>
			<li><img src="static/img/index/2.jpg" alt=""/></li>
			<li><img src="static/img/index/3.jpg" alt=""/></li>
			<li><img src="static/img/index/4.jpg" alt=""/></li>
			<li><img src="static/img/index/5.jpg" alt=""/></li>
			<li><img src="static/img/index/6.jpg" alt=""/></li>
		</ul>
		<ul class="col"></ul>
		<ul class="col" style="margin-right:0"></ul>
		
	</div>
	
	<!-- <div class="waifu">
        <div class="waifu-tips"></div>
        <canvas id="live2d" width="280" height="250" class="live2d"></canvas>
		添加菜单
        <div class="waifu-tool">
            <span class="fui-home"></span>
            <span class="fui-chat"></span>
            <span class="fui-eye"></span>
            <span class="fui-user"></span>
            <span class="fui-photo"></span>
            <span class="fui-info-circle"></span>
            <span class="fui-cross"></span>
        </div>
    </div>
    
    
    <script type="text/javascript" src="static/other/live2d/waifu-tips.js"></script>
    <script type="text/javascript" src="static/other/live2d/live2d.js"></script>
    <script type="text/javascript" src="static/other/live2d/autoload.js"></script> -->
    
    
    <script type="text/javascript">
	    window.onload = function () {
			lightyear.loading('show');
			setTimeout(function() {
		        lightyear.loading('hide');
		    }, 100)
		}
    	
	    $(function(){
	    	//url data function dataType
	    	function loadMeinv(){
	    		var data = 0;
	    		for(var i=0;i<9;i++){//每次加载时模拟随机加载图片
	    			data = parseInt(Math.random()*9);
	    			var html = "";
	    			html = '<li><img src = static/img/index/'
	    					+data+'.jpg><p>src='
	    					+data+'.jpg</p></li>';
	    			$minUl = getMinUl();
	    			$minUl.append(html);
	    		}
	    	}
	    	loadMeinv();
	    	$(window).on("scroll",function(){
	    		$minUl = getMinUl();
	    		if($minUl.height() <= $(window).scrollTop()+$(window).height()){
	    		//当最短的ul的高度比窗口滚出去的高度+浏览器高度大时加载新图片
	    			loadMeinv();
	    		}
	    	})
	    	function getMinUl(){//每次获取最短的ul,将图片放到其后
	    		var $arrUl = $("#container .col");
	    		var $minUl =$arrUl.eq(0);
	    		$arrUl.each(function(index,elem){
	    			if($(elem).height()<$minUl.height()){
	    				$minUl = $(elem);
	    			}
	    		});
	    		return $minUl;
	    	}
	    })
	</script>
</body>
</html>