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
				<h3>全部试卷</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<th style="width:4%">编号</th>
						<th style="width:12%">标题</th>
						<th style="width:12%">详细信息</th>
						<th style="width:12%">考试时间</th>
						<th style="width:12%">创建时间</th>
						<th style="width:12%">创建人</th>
						<th style="width:12%">过期时间</th>
						<th style="width:12%">操作</th>
					</tr>
					<s:iterator value="epList" var="v" status="st">
						<tr>
							<td>${st.index+1}</td>
							<td>${v.examTitle}</td>
							<td>${v.examDesc}</td>
							<td>${v.examTime}:min</td>
							<td>${v.createTime}</td>
							<td>${v.adminUser.name}</td>
							<td>${v.overdueTime}</td>
							<td>
								<s:if test="#session.adminUser.username=='admin'.toString()">
									<div class="table-fun">
										<a href="${pageContext.request.contextPath}/examPageAction_updateUI.action?id=${v.id}">详情</a>
										<a href="${pageContext.request.contextPath}/exampageAction_delete.action?id=${v.id}">删除</a>
									</div>
								</s:if>
								<s:else>
									没有权限
								</s:else>
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