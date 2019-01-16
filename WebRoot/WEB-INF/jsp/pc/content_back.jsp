<%@ page language="java" import="java.util.*,cn.yiyituan.model.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>内容详情-壹壹团</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/content.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/brief.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssReset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<style>
		.logo .logo_r input.input {
			width: 416px;
			height: 28px;
		}

	</style>
</head>
<body>
	<div class="wrap">
		<jsp:include page="nav.jsp" flush="true" />
		<div class="middle">
			<h1>${title}</h1>
            <div class="article">
				${content}
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
