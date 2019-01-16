<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="author" content="万盛道">
	<title>添加用户</title>
	
	<link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>

	<style>
		body{background-color: #f2f2f2;}
		.center{
			width:400px;
			text-align: left;
			margin: 2em auto;
			border: 1px #eee solid;
			padding-top: 2em;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 2px 0px 5px 5px rgba(40,20,20,.5);
		}
		.input-control{height: 50px;}
		.input-control input{padding-left: 2em;}
	</style>
</head>
<body>
	<div class="sui-navbar navbar-inverse">
	  <div class="navbar-inner"><a href="#" class="sui-brand">南昌航空大学壹壹团用户添加</a>
	  </div>
	</div>
	<ul class="sui-breadcrumb">
	</ul>
	<div class="msg" style="height:60px;">
	</div>

	<form action="${pageContext.request.contextPath}/user_add.action" class="sui-form form-horizontal sui-validate center" method="post">
	  <div class="control-group">
	    <label for="inputEmail" class="control-label">用户名</label>
	    <div class="controls">
	      <input class="input-xfat" type="text" id="userName" placeholder="用户名" name="userName">
	    </div>
	  </div>
	  <div class="control-group">
	    <label for="name" class="control-label">密码</label>
	    <div class="controls">
	      <input class="input-xfat" type="password" id="money" placeholder="密码"  name="passwd">
	    </div>
	  </div>


	  <div class="control-group" style="width:49%;margin: 1em auto; margin-left:95px;">
	    <div class="controls">
	      <button id="submit" class="sui-btn btn-block btn-xlarge btn-primary">提交</button>
	    </div>
	  </div>
	</form>

	<script>

		/* var sub = function() {
			var form = document.getElementsByClassName('center')[0];
			form.submit();
		}

		(function () {
			var submit = document.getElementById('submit');
			submit.addEventListener('click', sub);

		})();
 */
	</script>
</body>
</html>