<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basejs.jsp" %>
	<title>ssm主体页面</title>
	
	<link rel="stylesheet" type="text/css" href="static/css/lightyear/materialdesignicons.min.css">
	<link rel="stylesheet" type="text/css" href="static/other/bootstrap-multitabs/multitabs.min.css">
	<link rel="stylesheet" type="text/css" href="static/css/lightyear/style.min.css">
	
</head>
<body>
<div class="lyear-layout-web">
 	<div class="lyear-layout-container">
	    <!--左侧导航-->
	    <aside class="lyear-layout-sidebar">
	    	<div class="lyear-layout-sidebar-scroll">
				<nav class="sidebar-main">
					<ul class="nav nav-drawer">
						<li class="nav-item active"> <a class="multitabs" href="http://www.baidu.com"><i class="mdi mdi-home"></i> <span>后台首页</span></a>
						</li>
						<li class="nav-item nav-item-has-subnav">
							<a href="javascript:void(0)"><i class="mdi mdi-palette"></i> <span>UI 元素</span></a>
							<ul class="nav nav-subnav">
								<li> <a class="multitabs" href="lyear_ui_buttons.html">按钮</a> </li>
								<li> <a class="multitabs" href="lyear_ui_cards.html">卡片</a> </li>
								<li> <a class="multitabs" href="lyear_ui_grid.html">格栅</a> </li>
								<li> <a class="multitabs" href="lyear_ui_icons.html">图标</a> </li>
								<li> <a class="multitabs" href="lyear_ui_tables.html">表格</a> </li>
								<li> <a class="multitabs" href="lyear_ui_modals.html">模态框</a> </li>
								<li> <a class="multitabs" href="lyear_ui_tooltips_popover.html">提示 / 弹出框</a> </li>
								<li> <a class="multitabs" href="lyear_ui_alerts.html">警告框</a> </li>
								<li> <a class="multitabs" href="lyear_ui_pagination.html">分页</a> </li>
								<li> <a class="multitabs" href="lyear_ui_progress.html">进度条</a> </li>
								<li> <a class="multitabs" href="lyear_ui_tabs.html">标签页</a> </li>
								<li> <a class="multitabs" href="lyear_ui_typography.html">排版</a> </li>
								<li> <a class="multitabs" href="lyear_ui_step.html">步骤</a> </li>
								<li> <a class="multitabs" href="lyear_ui_other.html">其他</a> </li>
							</ul>
						</li>
						<li class="nav-item nav-item-has-subnav">
							<a href="javascript:void(0)"><i class="mdi mdi-format-align-justify"></i> <span>表单</span></a>
							<ul class="nav nav-subnav">
								<li> <a class="multitabs" href="lyear_forms_elements.html">基本元素</a> </li>
								<li> <a class="multitabs" href="lyear_forms_radio.html">单选框</a> </li>
								<li> <a class="multitabs" href="lyear_forms_checkbox.html">复选框</a> </li>
								<li> <a class="multitabs" href="lyear_forms_switch.html">开关</a> </li>
							</ul>
						</li>
						<li class="nav-item nav-item-has-subnav">
							<a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i> <span>示例页面</span></a>
							<ul class="nav nav-subnav">
								<li> <a class="multitabs" href="lyear_pages_doc.html">文档列表</a> </li>
								<li> <a class="multitabs" href="lyear_pages_gallery.html">图库列表</a> </li>
								<li> <a class="multitabs" href="lyear_pages_config.html">网站配置</a> </li>
								<li> <a class="multitabs" href="lyear_pages_rabc.html">设置权限</a> </li>
								<li> <a class="multitabs" href="lyear_pages_add_doc.html">新增文档</a> </li>
								<li> <a class="multitabs" href="lyear_pages_guide.html">表单向导</a> </li>
								<li> <a class="multitabs" href="lyear_pages_data_table.html">表格插件</a> </li>
								<li> <a href="lyear_pages_login.html" target="_blank">登录页面</a> </li>
								<li> <a href="lyear_pages_error.html" target="_blank">错误页面</a> </li>
							</ul>
						</li>
						<li class="nav-item nav-item-has-subnav">
							<a href="javascript:void(0)"><i class="mdi mdi-language-javascript"></i> <span>JS 插件</span></a>
							<ul class="nav nav-subnav">
								<li> <a class="multitabs" href="lyear_js_datepicker.html">日期选取器</a> </li>
								<li> <a class="multitabs" href="lyear_js_sliders.html">滑块</a> </li>
								<li> <a class="multitabs" href="lyear_js_colorpicker.html">选色器</a> </li>
								<li> <a class="multitabs" href="lyear_js_chartjs.html">Chart.js</a> </li>
								<li> <a class="multitabs" href="lyear_js_jconfirm.html">对话框</a> </li>
								<li> <a class="multitabs" href="lyear_js_tags_input.html">标签插件</a> </li>
								<li> <a class="multitabs" href="lyear_js_notify.html">通知消息</a> </li>
							</ul>
						</li>
						<li class="nav-item nav-item-has-subnav">
							<a href="javascript:void(0)"><i class="mdi mdi-menu"></i> <span>多级菜单</span></a>
							<ul class="nav nav-subnav">
								<li> <a href="#!">一级菜单</a> </li>
								<li class="nav-item nav-item-has-subnav">
									<a href="#!">一级菜单</a>
									<ul class="nav nav-subnav">
										<li> <a href="#!">二级菜单</a> </li>
										<li class="nav-item nav-item-has-subnav">
											<a href="#!">二级菜单</a>
											<ul class="nav nav-subnav">
												<li> <a href="#!">三级菜单</a> </li>
												<li> <a href="#!">三级菜单</a> </li>
											</ul>
										</li>
									</ul>
								</li>
								<li> <a href="#!">一级菜单</a> </li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
    	</aside>
    	<!--End 左侧导航-->
    	
    	<!--头部信息-->
		<header class="lyear-layout-header">

			<nav class="navbar navbar-default">
				<div class="topbar">

					<div class="topbar-left">
						<div class="lyear-aside-toggler">
							<span class="lyear-toggler-bar"></span>
							<span class="lyear-toggler-bar"></span>
							<span class="lyear-toggler-bar"></span>
						</div>
					</div>

					<ul class="topbar-right">
						<li class="dropdown dropdown-profile">
							<a href="javascript:void(0)" data-toggle="dropdown">
								<img class="img-avatar img-avatar-48 m-r-10" src="images/users/avatar.jpg"/>
								<span>笔下光年 <span class="caret"></span></span>
							</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li> <a class="multitabs" data-url="lyear_pages_profile.html" href="javascript:void(0)"><i class="mdi mdi-account"></i>
										个人信息</a> </li>
								<li> <a class="multitabs" data-url="lyear_pages_edit_pwd.html" href="javascript:void(0)"><i class="mdi mdi-lock-outline"></i>
										修改密码</a> </li>
								<li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
								<li class="divider"></li>
								<li> <a href="lyear_pages_login.html"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
							</ul>
						</li>
						<!--切换主题配色-->
						<li class="dropdown dropdown-skin">
							<span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
							<ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
								<li class="drop-title">
									<p>LOGO</p>
								</li>
								<li class="drop-skin-li clearfix">
									<span class="inverse">
										<input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
										<label for="logo_bg_1"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
										<label for="logo_bg_2"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
										<label for="logo_bg_3"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
										<label for="logo_bg_4"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
										<label for="logo_bg_5"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
										<label for="logo_bg_6"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
										<label for="logo_bg_7"></label>
									</span>
									<span>
										<input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
										<label for="logo_bg_8"></label>
									</span>
								</li>
								<li class="drop-title">
									<p>头部</p>
								</li>
								<li class="drop-skin-li clearfix">
									<span class="inverse">
										<input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
										<label for="header_bg_1"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_2" id="header_bg_2">
										<label for="header_bg_2"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_3" id="header_bg_3">
										<label for="header_bg_3"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_4" id="header_bg_4">
										<label for="header_bg_4"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_5" id="header_bg_5">
										<label for="header_bg_5"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_6" id="header_bg_6">
										<label for="header_bg_6"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_7" id="header_bg_7">
										<label for="header_bg_7"></label>
									</span>
									<span>
										<input type="radio" name="header_bg" value="color_8" id="header_bg_8">
										<label for="header_bg_8"></label>
									</span>
								</li>
								<li class="drop-title">
									<p>侧边栏</p>
								</li>
								<li class="drop-skin-li clearfix">
									<span class="inverse">
										<input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
										<label for="sidebar_bg_1"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
										<label for="sidebar_bg_2"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
										<label for="sidebar_bg_3"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
										<label for="sidebar_bg_4"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
										<label for="sidebar_bg_5"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
										<label for="sidebar_bg_6"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
										<label for="sidebar_bg_7"></label>
									</span>
									<span>
										<input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
										<label for="sidebar_bg_8"></label>
									</span>
								</li>
							</ul>
						</li>
						<!--切换主题配色-->
					</ul>

				</div>
			</nav>

		</header>
		<!--End 头部信息-->
    	
    	<!--页面主要内容-->
	    <main class="lyear-layout-content">
	    	<div id="iframe-content"></div>
	    </main>
	    <!--End 页面主要内容-->
	</div>
</div>
	
	<script type="text/javascript" src="static/js/lightyear/perfect-scrollbar.min.js"></script>
	<script type="text/javascript" src="static/other/bootstrap-multitabs/multitabs.js"></script>
	<script type="text/javascript" src="static/js/lightyear/index.min.js"></script>
</body>
</html>