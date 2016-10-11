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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/kingediter/themes/default/default.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/source/kingediter/plugins/code/prettify.css" />
	<script charset="utf-8" src="${pageContext.request.contextPath}/source/kingediter/kindeditor.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/source/kingediter/lang/zh-CN.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/source/kingediter/plugins/code/prettify.js"></script>
	
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-content">
			<div class="public-content-header">
				<h3>添加试题</h3>
			</div>
			<h4 align="left" style="margin-left: 30px;margin-top: 10px;color: red;">${message}</h4>
			<div class="public-content-cont">
			<form action="${pageContext.request.contextPath}/examQuestionAction_add.action" method="post">
				<input type="hidden" name="id" value="${id}"/>
				<div class="form-group">
					<label for="">选择试卷：</label>
					<s:select list="epList" listKey="id" name="epId" listValue="examTitle" cssClass="form-select"></s:select>
				</div>
				<div class="form-group">
					<label for="">试题类型：</label>
					<select name="questionType" class="form-select">
						<option value="1">单项选择</option>
						<option value="2">多项选择</option>
						<option value="3">判断对错</option>
						<option value="4">简答题</option>
					</select>
				</div>
				<div class="form-group">
					<label for="">标题：</label>
					<input class="form-input-txt" type="text" name="questionTitle" value="" />
				</div>
				<div class="form-group">
					<label for="">内容：</label>
					<textarea name="questionContext" rows="14" cols="200"  style="width:700px;height:200px;"></textarea>
					<p style="margin-left: 80px;margin-top: 3px;color: #f00">选择题要标注ABCD，每行一个答案。</p> 
				</div>
				<div class="form-group">
					<label for="">答案：</label>
					<input class="form-input-txt" type="text" name="questionResult" value="" />
					<p style="margin-left: 80px;margin-top: 3px;color: #f00">多项选择答案用','分割开,判断题输入t(true)或f(false),简答题留空。</p> 
				</div>
				
				<div class="form-group">
					<label for="">分值：</label>
					<input class="form-input-txt" type="text" name="questionScore" value="" />
				</div>
				
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		KindEditor.ready(function(K) {
        var options = {
       		cssPath : '${pageContext.request.contextPath}/source/kingediter/plugins/code/prettify.css',
			uploadJson : '${pageContext.request.contextPath}/source/kingediter/upload_json.jsp',
			fileManagerJson : '${pageContext.request.contextPath}/source/kingediter/file_manager_json.jsp',
            allowFileManager : true,
            resizeType : 0,
            items : [ 'source', '|', 'undo',  '|', 'preview',
                  'wordpaste', '|', 'justifyleft', 'justifycenter',
                  'justifyright', 'justifyfull', 'insertorderedlist',
                  'insertunorderedlist', 'selectall', '|', 'fullscreen',
                  'formatblock', 'fontname', 'fontsize', '|', 'forecolor',
                  'hilitecolor', 'bold', 'italic', 'lineheight',
                  'removeformat',"|","image","multiimage", '|', 'table', 'hr' ],
	            afterCreate : function() {
	                this.sync();
	            },
	            afterBlur : function() {
	                this.sync();
	            }
	        };
	        var editor = K.create('textarea', options);
	                  editor.sync();
	        //prettyPrint();
	    });
</script>
</body>
</html>