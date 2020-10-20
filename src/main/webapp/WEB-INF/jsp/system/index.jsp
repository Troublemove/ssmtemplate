<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp"%>
	<%@include file="/WEB-INF/jsp/base/basejs.jsp"%>
	<title>ssm测试首页展示</title>

	<script type="text/javascript" src="static/js/base/infinite-scroll-3.0.6.min.js"></script>
	<script type="text/javascript" src="static/js/base/masonry-4.2.2.min.js"></script>
	<style>
		.container-fluid {
			padding: 20px;
		}
		.box {
			margin-bottom: 20px;
			display:inline;
			float: left;
			width: 220px;
		}
		.box img {
			max-width: 100%
		}
	</style>
</head>
<body>
	<div id="masonry" class="container-fluid">
	  	<div class="box"><img src="static/img/index/0.jpg"></div>
	  	<div class="box"><img src="static/img/index/0.jpg"></div>
	  	<div class="box"><img src="static/img/index/1.jpg"></div>
	  	<div class="box"><img src="static/img/index/2.jpg"></div>
	  	<div class="box"><img src="static/img/index/3.jpg"></div>
	  	<div class="box"><img src="static/img/index/3.jpg"></div>
	  	<div class="box"><img src="static/img/index/3.jpg"></div>
	  	<div class="box"><img src="static/img/index/4.jpg"></div>
	  	<div class="box"><img src="static/img/index/4.jpg"></div>
	  	<div class="box"><img src="static/img/index/4.jpg"></div>
	  	<div class="box"><img src="static/img/index/4.jpg"></div>
		<div class="box"><img src="static/img/index/4.jpg"></div>
	</div>

	<script type="text/javascript">
		/* window.onload = function() {
			lightyear.loading('show');
			setTimeout(function() {
				lightyear.loading('hide');
			}, 100)
		} */
		
		$(function () {
			$('#masonry').masonry({
	            itemSelector: '#masonry > .box', //子类元素选择器
	            gutter: 20,//列的间隙
	            columnWidth: 200,//一列的宽度 ，包括边距 220+10+10
	            isAnimated: true,//使用jquery的布局变化，是否启用动画效果
	            animationOptions:{
	           	//jquery animate属性 ，动画效果选项。比如渐变效果 Object { queue: false, duration: 500 }
				},
				isFitWidth:true,//自适应宽度
				isResizableL:true,// 是否可调整大小
				isRTL:false,//使用从右到左的布局
	        });
			
			
			$(window).scroll(function(){
				if($(this).scrollTop() + $(this).height() == $(document).height()){
					lightyear.loading('show');
					for(var j=0;j<10;j++){
						let str = '<div class="box"><img src="static/img/index/9.jpg"></div>';
						$("#masonry").append(str).masonry('appended',str,true);
					}
					lightyear.loading('hide');
				}
			})
		});
		

	</script>
</body>
</html>