<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basejs.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basetag.jsp" %>
	<title>用户管理</title>
	
	<link rel="stylesheet" href="static/css/base/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="static/css/user/user.css">
</head>
<body>
	<!-- loading -->
    <div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
		<div id="load_title">正在加载中，请稍后</div>
	</div>
	<!-- 内容 -->
	<div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
				    <th>#</th>
				    <th>用户名</th>
				    <th>电话</th>
				    <th>邮箱</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty userList}">
						<c:forEach items="${userList}" var="u" varStatus="i">
				            <tr>
				                <td>${i.index + 1}</td>
				                <td>${u.username}</td>
				                <td>${u.mobile}</td>
				                <td>${u.email}</td>
				            </tr>
				        </c:forEach>
					</c:when>
					<c:otherwise>
						<tr><td>无数据</td></tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	
	<!-- 分页 -->
	<div id="example">
		<div id="pageLimit"></div>
	</div>
	<input type="hidden" id="pageNum" name="pageNum" value="${pageInfo.pageNum}" /> 
	<input type="hidden" id="pages" name="pages" value="${pageInfo.pages}" />
	
	<script type="text/javascript">
		
		window.onload = function () {
			lightyear.loading('show');
			setTimeout(function() {
		        lightyear.loading('hide');
		    }, 1000)
		}
		
		$('#pageLimit').bootstrapPaginator({
			currentPage : $("#pageNum").val(),
			totalPages : $("#pages").val(),
			size : "normal",
			bootstrapMajorVersion : 2,
			alignment : "center",
			numberOfPages : 5,
			itemTexts : function(type, page, current) {
				switch (type) {
				case "first":
					return "首页";
				case "prev":
					return "上一页";
				case "next":
					return "下一页";
				case "last":
					return "末页";
				case "page":
					return page;
				}
			},
			tooltipTitles: function (type, page, current) {
	            switch (type) {
	            case "first":
	                return "首页";
	            case "prev":
	                return "上一页";
	            case "next":
	                return "下一页";
	            case "last":
	                return "末页";
	            case "page":
	                return (page === current) ? "当前第 " + page + " 页" : "跳转到第 " + page + " 页";
	            }
	        },
			onPageClicked : function(event, originalEvent, type, page) {//给每个页眉绑定一个事件，其实就是ajax请求，其中page变量为当前点击的页上的数字。
				if ($("#pageNum").val() != page)
					window.location.href = "user/userInfo?pageNum=" + page;
			}
		});
	</script>
</body>
</html>