<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>创新文章列表-壹壹团</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/list.css">
	<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
	<style>
		.pull-right {
			margin-top: 10px;
			margin-right:15px;
			color: white;
		}
	</style>
</head>
<body>
	<div class="wrap">
		<div class="header">
		    <div class="header_auto">
			    <div class="header_left">
				    <img src="image/logo.png" height="50px" width="50px">
				    <span>壹壹团</span>
			    </div>
		    </div>
	       <div class="pull-right">
	   			  当前用户为【${session.user.userName}】
	    		<s:a class="sui-btn btn-info btn-xlarge" href="admin_index">返回首页</s:a>
	    	</div>
		</div>
		<div class="list">
			<table cellpadding="0" cellspacing="0">
				<s:iterator value="#list" status="status" id="dynamic">
					<s:if test="#status.odd == true">
	            	<tr class="bb">
	            	    <td>${title}
	            	       <a class="submit1" href="${pageContext.request.contextPath}/admin_deleteInnovation?id=${id}">删除</a>
	            	       <a class="submit2" href="${pageContext.request.contextPath}/admin_modifyInnovation?id=${id}">修改</a>
	            	    </td>
	                </tr>
	                </s:if>
	                <s:else>
	            	 <tr class="aa">
	            	    <td>${title}
	            	       <a class="submit1" href="${pageContext.request.contextPath}/admin_deleteInnovation?id=${id}">删除</a>
	            	       <a class="submit2" href="${pageContext.request.contextPath}/admin_modifyInnovation?id=${id}">修改</a>
	            	    </td>
	            	</tr>
	            	</s:else>
	           	</s:iterator>
		    </table>
			<div class="add">
	        	<a class="submit0" href="${pageContext.request.contextPath}/admin.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png"></a>
		    </div>
		</div>
		<div class="footer">
			<div class="abount">
				<a href="#">关于我们 |</a>
				<a href="#">壹壹团 |</a>
				<a href="#">南昌航空大学</a>
			</div>
			<div class="footer_bottom">
				@Copyright 南昌航空大学壹壹团 版权所有
			</div>
		</div>
	</div>
</body>
</html>