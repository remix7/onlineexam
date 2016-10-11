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
				<h3>用户</h3>
			</div>
			<div class="public-content-cont">
			<form action="${pageContext.request.contextPath}/studentAction_add.action" method="post">
				<input type="hidden" name="id" value="${id}"/>
				<div class="form-group">
					<label for="">选择班级：</label>
					<s:select list="scs" listKey="id" name="classId" listValue="className" cssClass="form-select"></s:select>
				</div>
				<div class="form-group">
					<label for="">学生姓名：</label>
					<input class="form-input-txt" type="text" name="name" value="${name}" />
				</div>
				<div class="form-group">
					<label for="">学生年龄：</label>
					<input class="form-input-txt" type="text" name="age" value="${age}" />
				</div>
				<div class="form-group">
					<label for="">手机号码：</label>
					<input class="form-input-txt" type="text" name="phone" value="${phone }" />
				</div>
				<div class="form-group">
					<label for="">学生学号：</label>
					<input class="form-input-txt" type="text" name="stuNum" value="${stuNum }" />
				</div>
				<div class="form-group">
					<label for="">登录名：</label>
					<input class="form-input-txt" type="text" name="username" value="${username }" />
				</div>
				<div class="form-group">
					<label for="">登录密码：</label>
					<input class="form-input-txt" type="text" name="password" value="" />
				</div>
				<div class="form-group">
					<label for="">注册状态：</label>
					<input class="form-input-txt" type="text" name="stuState" value="${stuState}" />
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