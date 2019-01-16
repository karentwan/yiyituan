<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <script src="js/edite.js"></script>
    <script src="js/editeByDiv.js"></script>
 	  <!-- 配置文件 -->
    <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="ueditor/ueditor.all.js"></script>
    <!--初始化数组，对应form的url-->
    <script type="text/javascript">
      var config = {};
      config.url = new Array;
      //动态的url
      config.url['dynamic'] = '${pageContext.request.contextPath}/edite_dynamic.action';
      //创新的url
      config.url['innovation'] = '${pageContext.request.contextPath}/edite_innovation.action';
      //动态的text值
      config.dynamic = new Array;
      /* config.dynamic[0] = {
                text : '团队动态',
                value: 'dynamic'
              }; */
      config.dynamic[0] = {
                text : '队员成果',
                value: 'achievement'
              };
      config.dynamic[1] = {
                text : '团队活动',
                value: 'activity'
              };
      //创新标签
      config.innovation = new Array;
      /* config.innovation[0] = {
                text: '团队创新',
                value: 'innovation'
              }; */
      config.innovation[0] = {
                text: '软件作品',
                value: 'software'
              };
      config.innovation[1] = {
                text: '硬件作品',
                value: 'hardware'
              };

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
          </select> 
        </div>

        <form action="${pageContext.request.contextPath}/edite_dynamic.action" method="post" onsubmit="return false;">
          <input id="title" name="title" type="hidden" />
          <input id="content" name="content" type="hidden"/>
          <input id="tag" name="tag" type="hidden"/>
          <input class="btn" type="button" value="发表动态" onclick="showDialog()"/>
        </form>
    </div>
  	</div>

    <!--编辑框，用来编辑的内容-->
  	<div class="editor">
  		<script id="editor" type="text/plain" ></script>
      <!--用来显示对话框-->
      <div class="dialog" style="display: none;">
        <div class="dialog-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="closeDialog()">×</button>
          <h2 class="dialog-title">标签</h2>
        </div>
        <div class="dialog-content">
          <select></select>
        </div>
        <div class="dialog-footer">
          <div class="dialog-button">
            <button type="button" onclick="closeDialog()">取消</button>
            <button type="button" onclick="subByTag()">确定</button>
          </div>
        </div>
      </div>
  	</div>
  	 <!--实例化Ueditor编辑器-->
  <script type="text/javascript">
    var ue = UE.getEditor('editor');

  </script>
  
  </body>

</html>
