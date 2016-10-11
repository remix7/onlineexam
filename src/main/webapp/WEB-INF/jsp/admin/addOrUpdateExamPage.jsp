<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/reset.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/public.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-content">
			<div class="public-content-header">
				<h3>试卷</h3>
			</div>
			<div class="public-content-cont">
			<form action="${pageContext.request.contextPath}/examPageAction_addOrUpdate.action" method="post">
				<input type="hidden" name="id" value="${id}"/>
				
				<div class="form-group">
					<label for="">试卷标题：</label>
					<input class="form-input-txt" type="text" name="examTitle" value="${examTitle}" />
				</div>
				<div class="form-group">
					<label for="">试卷详情：</label>
					<input class="form-input-txt" type="text" name="examDesc" value="${examDesc}" />
				</div>
				<div class="form-group">
					<label for="">考试时间：</label>
					<input class="form-input-txt" type="text" placeholder="分钟" name="examTime" value="${examTime }" />
				</div>
				<div class="form-group">
					<label for="">过期时间：</label>
					<input class="form-input-txt" type="text" placeholder="2020-10-10 10:10:10" name="overdueDay" value="${overdueTime}" />
					<p style="margin-left: 80px;margin-top: 3px;color: #f00">时间格式为:2020-10-10 10:10:10 不能出错。</p> 
				</div>
				<s:if test="examTitle!=null">
					<div class="form-group">
						<label for="">试卷内容：</label>
						<!-- <textarea readonly="readonly" name="examContext" rows="14" cols="200"  style="width:700px;height:200px;"></textarea> -->
					</div>
					<div class="form-group">
						<label for="">答案：</label>
						<input class="form-input-txt" type="text" name="examResult" value="${examResult}" />
					</div>
				</s:if>
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
	<div align="left" style="margin-left: 50px;margin-top: 10px;margin-bottom: 10px">${examContext}</div>
</body>
</html>