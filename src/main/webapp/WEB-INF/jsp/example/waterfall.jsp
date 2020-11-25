<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp"%>
	<%@include file="/WEB-INF/jsp/base/basejs.jsp"%>
	<title>ssm瀑布流展示</title>

	<script type="text/javascript" src="static/js/base/infinite-scroll-3.0.6.min.js"></script>
	<script type="text/javascript" src="static/js/base/masonry-4.2.2.min.js"></script>
	<script type="text/javascript" src="static/js/base/imagesLoaded-4.1.4.js"></script>
	<style>
		.body{
			pddding: 20px 0;
		}
		.masonry {
			width: 98%;
			height: 100%;
		}
		.box {
			margin-bottom: 20px;
			display:inline;
			float: left;
			width: 180px;
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
			var $grid = $('#masonry').masonry({
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
				transitionDuration: '0.5s',//过渡效果持续时间，默认0.4s
				stagger: 30,//项转换位置时为其提供交错效果，使项能够一个接一个的转换位置。按照CSS时间的格式设置，'0.03s'，或者用以毫秒为单位的数字，30。
	        });
			
			$grid.imagesLoaded().progress( function() {
				$grid.masonry('layout');
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