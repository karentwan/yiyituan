<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " 
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html>
  <head>
    <base href="<%=basePath%>">
    <title>招新-壹壹团</title>
	<meta name="author" content="万盛道">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/brief.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/recruit_right.css">
	<script type="text/javascript">
		//要更改的class属性名称
		var classAttr = 'here';
		//要更改的div的id
		var id = 'subnav';
	</script>
	<style type="text/css">
	
		.content_r p {
			text-indent: 2em;
		
		}
		.content  {
			height:420px;
		}
	
	</style>
  </head>
  
  <body>
  	<jsp:include page="nav.jsp" flush="true"/>
  	<div class="content">
			<h1>招新</h1>
			<!--右边正文内容-->
			<div class="content_r">
				<!--团队招新-->
				<div class="union_brief">
					 <p>
如果你想加入一个学习小组，壹壹团是个不错的选择；如果你想成为技术大牛，壹壹团也是个不错的选择，如果你想来壹壹团混吃混喝，请出门右拐找别家。
					</p>
					<p>
南昌航空大学壹壹团以学习出发，承载不同的理想，以学习科学技术为手段，通过比赛锻炼队员素质，力求让更多的同学能走出迷茫、找到学习伙伴、实现自己的梦想。
					</p>
					<p>
团队提供大量的学习资源，定期开展学习交流会。在团队里，能够自由同时快乐的学习，更有学长学姐指点迷津、督促学习。
					 </p>
		   	   		 
					<p>
只要你有这样一份学习的心，加入壹壹团，把你小时候所有曾被嘲笑的愿望都通过自己的手实现。
					 </p>
<!--
					<p>
如果感兴趣加入，请联系杨老师:yangcihui@nchu.edu.cn。
					</p>
-->
					<p>
如果感兴趣加入，请将报名申请表的电子版发送到朱佳萍学姐的邮箱：867191724@qq.com
					</p>
					<p>
报名申请表电子版下载地址：<a href="http://121.42.36.206/yiyituan/file/yiyituan.docx">点我下载</a>

					</p>
				</div>
			</div>
		</div>
  	<jsp:include page="footer.jsp" flush="true"/>
  </body>
</html>
