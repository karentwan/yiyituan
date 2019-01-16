<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>test页面</title>
  </head>
  
  <body>
  	
	<form action="http://localhost:8080/team1.0/edit_dynamic.action" method="post">
		标题：<input name="title" type="input" />
		内容：<input name="content" type="input" />
		<input type="submit" value="submit"/>
	</form>  	
  
  </body>
</html>
