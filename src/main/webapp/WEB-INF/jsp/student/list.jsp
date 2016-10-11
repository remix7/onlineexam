<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>OnlineExam iCynara-1005</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/public.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/content.css" />

</head>
<body>
	<!-- 页头开始 -->
	<div class="public-header-warrp">
		<div class="public-header">
			<div class="content">
				<div class="public-header-logo">
					<a href=""><i>iC</i>
						<h3>iCynara-1005</h3></a>
				</div>
				<div class="public-header-admin fr">
					<p class="admin-name">${sessionScope.studentUser.name}同学，您好！</p>
					<div class="public-header-fun fr">
						<a href="${pageContext.request.contextPath}/studentAction_logOut.action"class="public-header-loginout">安全退出</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 页头结束 -->
	<div style="margin-top: 5%;margin-left: 10%;margin-right: 10%">
		<div class="container" style="margin-top: 5px">
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
									<div class="table-fun">
										<a href="${pageContext.request.contextPath}/examPageAction_exam.action?id=${v.id}">考试</a>
									</div>
								</td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>