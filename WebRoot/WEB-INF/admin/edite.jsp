<%@ page language="java" import="java.util.*,cn.yiyituan.model.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>壹壹团</title>
    <meta name="keywords" content="壹壹团">
    <meta name="author" content="万盛道"/>
    <meta name="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/edite.css">
    <script src="js/edite.js"></script>
 	  <!-- 配置文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>
    <!--初始化数组，对应form的url-->
    <script type="text/javascript">
      var config = {};
      config.url = new Array;
      //动态的url
      config.url['dynamic'] = '${pageContext.request.contextPath}/edite_dynamic.action';
      //创新的url
      config.url['innovation'] = '${pageContext.request.contextPath}/edite_innovation.action';
      //获奖的url
      config.url['awards'] = '${pageContext.request.contextPath}/edite_awards.action';

    </script>
  	</head>
  	  
  <body>

    <!--上面的标题栏，加上发布按钮-->
  	<div class="title">
      <!--标题输入栏-->
  		<input id="ti" class="input" type="input" placeholder="请输入标题"/>
      <div class="btns">
        <!--选择框-->
        <div class="select">
          <select onchange="selectChangeEvent()">
            <option value="dynamic">动态</option>
            <option value="innovation">创新</option>
            <option value="awards">获奖</option>
          </select> 
        </div>

        <form action="http://localhost:8080/team1.0/edite_dynamic.action" method="post" onsubmit="return false;">
          <input id="title" name="title" type="hidden" />
          <input id="content" name="content" type="hidden"/>
          <input class="btn" type="submit" value="发表动态" onclick="sub()"/>
        </form>
    </div>
  	</div>

    <!--编辑框，用来编辑的内容-->
  	<div class="editor">
  		<script id="editor" type="text/plain" ></script>
  	</div>
  	
  
  </body>
  <!--实例化Ueditor编辑器-->
  <script type="text/javascript">
    var ue = UE.getEditor('editor');

  </script>
</html>
