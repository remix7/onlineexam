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
				<h3>班级信息</h3>
			</div>
			<div class="public-content-cont">
			<form action="${pageContext.request.contextPath}/stuClassAction_update.action" method="post">
				<input type="hidden" name="id" value="${id}"/>
				<div class="form-group">
					<label for="">选择教师：</label>
					<s:select list="aus" listKey="id" name="auId" listValue="name" headerKey="%{id}" headerValue="%{adminUser.name}" cssClass="form-select"></s:select>
				</div>
				<div class="form-group">
					<label for="">班级编号：</label>
					<input class="form-input-txt" type="text" name="calssNum" value="${calssNum}" />
				</div>
				<div class="form-group">
					<label for="">班级名称：</label>
					<input class="form-input-txt" type="text" name="className" value="${className}" />
				</div>
				<div class="form-group">
					<label for="">班级状态：</label>
					<input class="form-input-txt" type="text" name="classState" value="${classState}" />
				</div>
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>