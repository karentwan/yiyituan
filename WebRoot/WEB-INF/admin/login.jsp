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
	<title>登录-壹壹团</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="header_left">
				<img src="${pageContext.request.contextPath}/image/logo_small.png">
			</div>
		</div>
		<div class="middle">
			<div class="middle_right">
				<span class="welcome">欢迎登录</span>
			      <div class="form">
				    <form action="${pageContext.request.contextPath}/user_login.action" method="post">
					   <p class="customers">用户名</p><input type="text" class="user" name="loginname" placeholder="用户名/邮箱/手机号" tabindex="1" autocomplete="off" title="用户名">
					   <p class="customers">密码</p><input type="password" class="pass" name="loginpass" placeholder="密码" tabindex="2" autocomplete="off" title="密码">
					   <input type="checkbox" class="check"><span class="auto">自动登录</span>
					   <span class="public">公共场所不建议自动登录！</span>
					   <input class="submit" type="submit" value="登&nbsp;录"></input></br>
					   <div class="state">
					   <a href="#" class="free">免费注册></a><a href="#" class="free forget">忘记密码？</a>
					   </div>
				  </form> 
			      </div>
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