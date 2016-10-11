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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/login.css" />
</head>
<body style="background-image: url('../source/images/1.jpg');">
<div class="page">
	<div class="loginwarrp">
		<div class="logo">管理员注册</div>
        <div class="login_form">
			<form  id="Login" method="post" action="${pageContext.request.contextPath}/adminUserAction_regiest.action">
				<li class="login-item">
					<span>姓名：</span>
					<input type="text" name="name" class="login_input">
				</li>
				<li class="login-item">
					<span>手机号：</span>
					<input type="text" name="phone" class="login_input">
				</li>
				<li class="login-item">
					<span>邮箱：</span>
					<input type="text" name="email" class="login_input">
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
				<a href="${pageContext.request.contextPath}/admin/login.jsp" >登录</a>
           </form>
		</div>
	</div>
</div>
</body>
</html>