<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/WEB-INF/jsp/base/basecss.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basejs.jsp" %>
    <%@include file="/WEB-INF/jsp/base/basetag.jsp" %>
	<title>用户管理</title>
	
	<link rel="stylesheet" type="text/css" href="static/css/user/user.css">
</head>
<body>
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
</body>
</html>