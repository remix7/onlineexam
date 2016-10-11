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
		<div class="logo">用户激活</div>
        <div class="login_form">
			<form  id="Login" name="Login" method="post" onsubmit="" action="${pageContext.request.contextPath}/adminUserAction_mailCheck.action">
				<li class="login-item">
					<span>回执码：</span>
					<input type="text" name="mailCheck" class="login_input">
				<li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="checkcode" class="login_input verify_input">
				</li>
				<img src="http://localhost:8080/onlineExam/ImageChack" border="0" class="verifyimg" height="30px" width="120 px" onClick="refreshVerifyCode(this);"/>
				<div class="clearfix"></div>
				
				<li class="login-sub">
					<input type="submit" value="激活" />
				</li> 
				<a href="${pageContext.request.contextPath}/admin/login.jsp" style="margin-left: 360px">登录</a>
           </form>
		</div>
	</div>
	<h6 align="center">iCynara-1005</h6>
</div>
</body>
</html>