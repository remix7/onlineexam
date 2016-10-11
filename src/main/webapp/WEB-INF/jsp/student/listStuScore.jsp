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
					<h3>全部成绩</h3>
				</div>
				<div class="public-content-cont">
					<table class="public-cont-table">
						<tr>
							<th style="width:12%">编号</th>
							<th style="width:22%">所属班级</th>
							<th style="width:22%">所属试卷</th>
							<th style="width:22%">得分</th>
							<th style="width:22%">答案</th>
						</tr>
						<s:iterator value="ssList" var="v" status="st">
							<tr>
								<td>${st.index+1}</td>
								<td>${v.student.stuClass.className}</td>
								<td>${v.examPage.examTitle}</td>
								<td>${v.socre}</td>
								<td><label onclick="ShowDiv('test','${v.stuResult}')">点击查看</label></td>
							</tr>
						</s:iterator>
					</table>
				</div>
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