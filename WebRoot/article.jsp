<%@ page language="java" import="java.util.*,cn.yiyituan.model.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>article文章</title>
    <meta charset="utf-8"/>
  </head>
  
  <body>
  	<div>
		title: <%=((Dynamic)request.getAttribute("d")).getTitle() %>  		
		<br/><%=((Dynamic)request.getAttribute("d")).getContent() %>
  	</div>
  </body>
</html>
