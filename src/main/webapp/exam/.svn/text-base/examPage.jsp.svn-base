<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${examTitle}</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/source/css/exam.css" />
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/source/css/reset.css" />
</head>
	<body style="background-color: #DBEAF9">
		<div class="exam">
			<div
				style="margin-top: 3%; margin-left: 25%; margin-right: 25%; margin-bottom: 3%'">
				<center>
					<label style="color: #f00; font-size: 40px; margin-bottom: 10px">${examTitle}</br></label>
				</center>
				<br/>
				作者：${adminUser.name} &nbsp;&nbsp;&nbsp;考试时间：${examTime}分钟&nbsp;&nbsp;&nbsp;满分:${total}
				<form action="${pageContext.request.contextPath}/score_saveScore.action" method="post">
					<input type="hidden" name="epId" value="${id}" />
					${examContext}
					<li class="sub">
						<input type="submit" value="提交"/>
					</li>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			
		</script>
	</body>
</html>