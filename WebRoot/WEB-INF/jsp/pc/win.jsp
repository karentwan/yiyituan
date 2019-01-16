<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " 
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> -->
<html>
  <head>
    <base href="<%=basePath%>">
    <title>获奖-壹壹团</title>
	<meta name="author" content="万盛道">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/brief.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/win_right.css">
	<script type="text/javascript">
		//要更改的class属性名称
		var classAttr = 'here';
		//要更改的div的id
		var id = 'subnav';
	</script>
	
	<style type="text/css">
		.content_r td {
			text-align: center;
		}
	</style>
	
  </head>
  
  <body>
  	<jsp:include page="nav.jsp" flush="true"/>
  	<div class="content">
  		<h1>获奖</h1>
			<!--右边正文内容-->
			<div class="content_r">
				<!--团队创新-->
				<div class="union_brief">
					<%-- <h2>
						<span>
							团队获奖
						</span>
					</h2> --%>
				    <table cellpadding="0" cellspacing="0">
				    	<!-- 标题 -->
					    <tr class="style3">
					        	<th></th>
							<th>级别</th>
							<th>获奖人</th>
							<th>获奖时间</th>
							<th>获奖名称</th>
						</tr>
				    	<s:iterator value="#awardsList" status="status" id="obj">
		            		<s:if test="#status.odd == true" >
			            		<tr class="style2">
									<td></td> 
									<td>${obj.rank}</td>
									<td>${obj.member}</td>
									<td>${obj.time}</td>
									<td>${obj.awardsName}</td>
								</tr>
		            		</s:if>
		            		<s:else>
			            		<tr class="style1">
									<td></td>
									<td>${obj.rank }</td>
									<td>${obj.member}</td>
									<td>${obj.time}</td>
									<td>${obj.awardsName}</td>
								</tr>
		            		</s:else>
		            	</s:iterator>
		            </table>
				</div>
			</div>
		</div>
  	<jsp:include page="footer.jsp" flush="true"/>
  </body>
  <script>
  	//select的onchange事件
  	function changeEvent() {
  		var select = document.getElementsByTagName('select')[0];
  		var value = select.options[select.options.selectedIndex].value;
  		window.location.href = "${pageContext.request.contextPath}/nav_awards.action?pageNum=" + value;
  	}
	//设置content这个div的高度
	var content_rDiv = document.getElementsByClassName('content_r')[0];
	var contentDiv   = document.getElementsByClassName('content')[0];
	contentDiv.style.height = content_rDiv.offsetHeight + 51;

  </script>
</html>
