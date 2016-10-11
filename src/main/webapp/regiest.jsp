<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/reset.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/public.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/login-student.css" />
</head>
<body style="background-image: url('source/images/bg.jpg');">
<div class="page">
	<div class="loginwarrp">
		<div class="logo">注册</div>
		<label  style="margin-top: 5px;color: #F00" >${message}</label>
        <div class="login_form">
			<form  id="Login" method="post" action="${pageContext.request.contextPath}/studentAction_register.action">
				<li class="login-item">
				<span>班级：</span>
					<s:select cssStyle="width:250px;height:30px;" list="scs" listKey="id" name="classId" cssClass="form-select" listValue="className"></s:select>
				</li>
				<li class="login-item">
					<span>姓名：</span>
					<input type="text" name="name" class="login_input">
				</li>
				<li class="login-item">
					<span>手机号：</span>
					<input type="text" name="phone" class="login_input">
				</li>
				<li class="login-item">
					<span>学号：</span>
					<input type="text" name="stuNum" class="login_input">
				</li>
				<li class="login-item">
					<span>登录名：</span>
					<input type="text" name="username" class="login_input">
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" name="password" class="login_input">
				</li>
				<li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="checkcode" class="login_input verify_input">
				</li>
				<img src="http://localhost:8080/onlineExam/ImageChack" border="0" class="verifyimg" height="30px" width="120 px" onClick="refreshVerifyCode(this);"/>
				<div class="clearfix"></div>
				
				<li class="login-sub">
					<input type="submit" value="注册" />
				</li> 
				<a href="${pageContext.request.contextPath}/" >登录</a>
           </form>
		</div>
	</div>
</div>
</body>
</html>