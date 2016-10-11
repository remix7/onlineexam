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
				<h3>全部试题</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<th style="width:4%">编号</th>
						<th style="width:16%">题目标题</th>
						<th style="width:16%">题目内容</th>
						<th style="width:16%">题目答案</th>
						<th style="width:16%">题目分值</th>
						<th style="width:16%">所属试卷</th>
						<th style="width:16%">操作</th>
					</tr>
					<s:iterator value="eqList" var="v" status="st">
						<tr>
							<td>${st.index+1}</td>
							<td>${v.questionTitle}</td>
							<td><label onclick="ShowDiv('test','${v.questionContext}')">点击查看</label></td>
							<td><label onclick="ShowDiv('test','${v.questionResult}')">点击查看</label></td>
							<td>${v.questionScore}</td>
							<td>${v.examPage.examTitle}</td>
							<td>
								<s:if test="#session.adminUser.username=='admin'.toString()">
									<div class="table-fun">
										<a href="${pageContext.request.contextPath}/examQuestionAction_updateUI.action?id=${v.id}">修改</a>
										<a href="${pageContext.request.contextPath}/examQuestionAction_delete.action?id=${v.id}">删除</a>
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
				</dsiv>
			</div>
		</div>
	</div>
	<script type="text/javascript" language="javascript">
		function ShowDiv(obj,v){
			
			document.getElementById(obj).style.display = 'block';
			document.getElementById('tr1').innerHTML=v;
			
		}
		function dieDiv(obj) {
			document.getElementById(obj).style.display = 'none';
		}
		
	</script>
		<div id="test" style="display:none;position:absolute;left:10%;top:12%;width:71%;height:40%;background-color:#fff" onclick="dieDiv('test')" >
			<h3 id="tr1" align="left" style="margin-top: 50px;font-size: 20px;margin-left: 100px"></h3>
		</div>
</body>
</html>