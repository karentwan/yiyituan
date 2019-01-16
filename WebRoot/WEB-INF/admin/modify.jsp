<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/editeByDiv.css">
 	<!-- 配置文件 -->
    <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="ueditor/ueditor.all.js"></script>
    <!--初始化数组，对应form的url-->
    <script type="text/javascript">
    	var config = {};
    	config.url = new Array;
    	//记录修修改的地址
    	config.url["dynamic"]    = "${pageContext.request.contextPath}/admin_modifyDynamic.action";
    	//ueditor显示的内容
    	//config.content  = "${obj.content}";
    	config.title    = "${obj.title}";
    </script>
    
    <style>
    	
    	
    
    </style>
    
  </head>
  	  
  <body>
    <!--上面的标题栏，加上发布按钮-->
  	<div class="title">
      <!--标题输入栏-->
  		<input id="ti" class="input" type="input" value="${obj.title}" placeholder="请输入标题"/>
      <div class="btns">
        <form action="${pageContext.request.contextPath}/admin_recommitDynamic.action" method="post" onsubmit="return false;">
          <input name="id" type="hidden" value="${obj.id}"/>
          <input id="title" name="title" type="hidden" value="${obj.title}"/>
          <input id="content" name="content" type="hidden" />
          <input id="tag" name="tag" type="hidden" value="${obj.tag}"/>
          <input class="btn" type="button" value="确认修改"/>
        </form>
     </div>
  	</div>
	
    <!--编辑框，用来编辑的内容-->
  	<div class="editor">
  		<%-- <script id="editor" type="text/plain" ></script> --%>
  		
  		<textarea id="editor">${obj.content}</textarea>
  		
  	</div>
  	 <!--实例化Ueditor编辑器-->
  <script type="text/javascript">
    var ue = UE.getEditor('editor');
    

    /**
     * 提交函数
     */
    var sub = function() {
    	//获得提交的表单
    	var form       = document.getElementsByTagName('form')[0];
    	var titleStr   = document.getElementById('ti').value;
    	var title      = document.getElementById('title');
    	title.setAttribute('value', titleStr);
    	var contentStr = ue.getContent();
    	var content    = document.getElementById('content');
    	content.setAttribute('value', contentStr);
    	form.submit();
    }
    
    var init = function() {
    	//ue.setContent(config.content);
    	var btn = document.getElementsByClassName('btn')[0];
    	btn.addEventListener('click', sub);
    	//var content = document.getElementById('backContent');
    	//ue.setContent(content.value);
    }
    //设置时间间隔，当ueditor的界面加载完成之后初始化内容
   //	setTimeout('init()', 1000);
    ue.ready(init);
    
  </script>

  
  </body>
  

</html>
