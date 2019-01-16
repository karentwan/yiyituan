<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>管理-壹壹团</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/manage.css">
	<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
	<style>
		.pull-right {
			margin-top: 10px;
			margin-right:15px;
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
	    	<s:a class="sui-btn btn-info btn-xlarge" href="user_logout">注销</s:a>
	    	</div>
		</div>
		<div class="middle">
		    <a href="${pageContext.request.contextPath}/user_list.action">
				<div class="area6">
					<img src="image/user.png" width="80px" height="80px">
					<p>账 号 管 理</p>
				</div>
			</a>
		    <a href="${pageContext.request.contextPath}/admin_findAllDynamic.action">
				<div class="area1">
					<img src="image/b1.png" width="50px" height="50px">
					<p>动态文章管理</p>
				</div>
			</a>
			<a href="${pageContext.request.contextPath}/admin_findAllInnovation.action">
				<div class="area2">
					<img src="image/b2.png" width="50px" height="50px">
					<p>创新文章管理</p>
				</div>
			</a>
			<a href="${pageContext.request.contextPath}/admin_findAllAwards.action">
				<div class="area3">
					<img src="image/b4.png" width="50px" height="50px">
					<p>获奖文章管理</p>
				</div>
			</a>
			<a href="${pageContext.request.contextPath}/projectEdit_list.action">
				<div class="area4">
					<img src="image/Innovation.png" width="50px" height="50px">
					<p>创新项目管理</p>
				</div>
			</a>
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