<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/reset.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-content">
			<div class="public-content-header">
				<h3>全部用户</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<th style="width:4%">编号</th>
						<th style="width:12%">名称</th>
						<th style="width:12%">手机号</th>
						<th style="width:12%">学号</th>
						<th style="width:12%">登录名</th>
						<th style="width:12%">注册时间</th>
						<th style="width:6%">状态</th>
						<th style="width:6%">班级</th>
						<th style="width:12%">操作</th>
					</tr>
					<s:iterator value="sList" var="v" status="st">
						<tr>
							<td>${st.index+1}</td>
							<td>${v.name}</td>
							<td>${v.phone}</td>
							<td>${v.stuNum}</td>
							<td>${v.username}</td>
							<td>${v.registerTime}</td>
							<td>${v.stuState}</td>
							<td>${v.stuClass.className}</td>
							<td>
								<div class="table-fun">
									<a href="${pageContext.request.contextPath}/studentAction_updateUI.action?id=${v.id}">修改</a>
									<a href="${pageContext.request.contextPath}/studentAction_delete.action?id=${v.id}">删除</a>
								</div>
							</td>
						</tr>
					</s:iterator>
				</table>
				<div class="page">
					<form action="" method="get">
					共<span>42</span>个站点
						<a href="">首页</a>
						<a href="">上一页</a>
						<a href="">下一页</a>
						第<span style="color:red;font-weight:600">12</span>页
						共<span style="color:red;font-weight:600">120</span>页
						<input type="text" class="page-input">
						<input type="submit" class="page-btn" value="跳转">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>