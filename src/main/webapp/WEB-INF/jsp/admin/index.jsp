<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>OnlineExam后台管理</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/source/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/source/css/public.css">
</head>
<body>
	<div class="public-header-warrp">
		<div class="public-header">
			<div class="content">
				<div class="public-header-logo">
					<a href=""><i>iC</i>
						<h3>iCynara-1005</h3></a>
				</div>
				<%-- <p class="logo-des">创建于 ${sessionScope.adminUser.createTime}</p> --%>
				<div class="public-header-admin fr">
					<p class="admin-name">${sessionScope.adminUser.name}管理员，您好！</p>
					<div class="public-header-fun fr">
						<a href="" class="public-header-man">管理</a> 
						<a href="${pageContext.request.contextPath}/adminUserAction_logOut.action"class="public-header-loginout">安全退出</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="clearfix"></div> -->
	<!-- 内容展示 -->
	<div class="public-ifame mt20">
		<div class="content">
			<!-- 左侧导航栏 -->
			<div class="public-ifame-leftnav">
				<div class="public-title-warrp">
					<div class="public-ifame-title ">
						<a href="${pageContext.request.contextPath}/index.jsp">首页</a>
					</div>
				</div>
				<ul class="left-nav-list">
					<s:if test="#session.adminUser.username=='admin'.toString()">
						<li class="public-ifame-item"><a href="javascript:;">用户管理</a>
							<div class="ifame-item-sub">
								<ul>
									<li><a href="${pageContext.request.contextPath}/studentAction_listAll.action" target="content">全部用户</a></li>
									<li><a href="${pageContext.request.contextPath}/studentAction_addUI.action" target="content">添加用户</a></li>
								</ul>
							</div>
						</li>
						<li class="public-ifame-item"><a href="javascript:;">老师管理</a>
							<div class="ifame-item-sub">
								<ul>
									<li><a href="${pageContext.request.contextPath}/adminUserAction_listAll.action" target="content">全部老师</a>
								</ul>
							</div>
						</li>
						<li class="public-ifame-item"><a href="javascript:;">班级管理</a>
							<div class="ifame-item-sub">
								<ul>
									<li><a href="${pageContext.request.contextPath}/stuClassAction_listAll.action" target="content">全部班级</a>
								</ul>
								<ul>
									<li><a href="${pageContext.request.contextPath}/stuClassAction_addUI.action" target="content">添加班级</a>
								</ul>
							</div>
						</li>
					</s:if>
					<li class="public-ifame-item"><a href="javascript:;">试卷管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="${pageContext.request.contextPath}/examPageAction_listAll.action" target="content">全部试卷</a></li>
								<li><a href="${pageContext.request.contextPath}/examPageAction_addUI.action" target="content">添加试卷</a></li>
								<li><a href="${pageContext.request.contextPath}/examQuestionAction_addUI.action" target="content">添加试题</a></li>
								<li><a href="${pageContext.request.contextPath}/examQuestionAction_listAll.action" target="content">全部试题</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item"><a href="javascript:;">成绩管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="${pageContext.request.contextPath}/stuScore_listAll.action"" target="content">全部成绩</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<!-- 右侧内容展示部分 -->
			<div class="public-ifame-content">
				<iframe name="content" src="" frameborder="0"
					id="mainframe" scrolling="yes" marginheight="0" marginwidth="0"
					width="100%" style="height: 700px;"></iframe>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/source/js/jquery.min.js"></script>
	<script>
		$().ready(function() {
			var item = $(".public-ifame-item");
			for (var i = 0; i < item.length; i++) {
				$(item[i]).on('click', function() {
					$(".ifame-item-sub").hide();
					if ($(this.lastElementChild).css('display') == 'block') {
						$(this.lastElementChild).hide()
						$(".ifame-item-sub li").removeClass("active");
					} else {
						$(this.lastElementChild).show();
						$(".ifame-item-sub li").on('click', function() {
							$(".ifame-item-sub li").removeClass("active");
							$(this).addClass("active");
						});
					}
				});
			}
		});
	</script>
</body>
</html>