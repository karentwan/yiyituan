<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " 
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html>
  <head>
    <base href="<%=basePath%>">
    <title>动态-壹壹团</title>
	<meta name="author" content="万盛道">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/brief.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dynamic_right.css"> 
	<script type="text/javascript">
		//要更改的class属性名称
		var classAttr = 'here';
		//要更改的div的id
		var id = 'subnav';
		//从EL表达式获得当前标签
		var tag = '${tag}';
		//注册所有标签
		var tags = new Array;
	//	tags[0] = 'dynamic';
		tags[0] = 'achievement';
		tags[1] = 'activity';
		
	</script>
	<%-- <script src="${pageContext.request.contextPath}/js/modifyClassAttr.js"></script> --%>
	<%-- <script src="${pageContext.request.contextPath}/js/brief_right.js"></script> --%>
	<script src="${pageContext.request.contextPath}/js/init.js"></script> 
	<style>
		.content {
			height:425px;				
		}
		.content .content_l {
			height:300px;
		}
	</style>	
  </head>
  
  <body>
 	 <jsp:include page="nav.jsp" flush="true"/>
 	 <div class="content">
			<h1>动态</h1>
			<!--左边二级菜单-->
			<div class="content_l" id="subnav">
				<ul>
					<!-- <li class="here"><a href="javascript:void(0)">团队动态</a></li> -->
					<li ><a href="javascript:void(0)">队员成果</a></li>
					<li ><a href="javascript:void(0)">团队活动</a></li>
				</ul>
			</div>
			<!--右边正文内容-->
			<div class="content_r">
				<%-- <%@ include file="tableCommon.jsp" %> --%>
				 <div class="union_brief">
					<h2>
						<span>
							团队动态
						</span>
					</h2>
		            <table cellpadding="0" cellspacing="0">
		            	<s:iterator value="recordList" status="status" id="obj">
		            		<s:if test="#status.odd == true" >
		            			<tr class="bb"><td><a href="${pageContext.request.contextPath}/content_dynamic?id=${id}"><s:property value="#obj.title"/></a></td></tr>
		            		</s:if>
		            		<s:else>
		            			<tr class="aa"><td><a href="${pageContext.request.contextPath}/content_dynamic?id=${id}"><s:property value="#obj.title"/></a></td></tr>
		            		</s:else>
		            	</s:iterator>
		            	<!-- <tr class="bb"><td><a href="#">团队成员拍合照</a></td></tr> -->
		            </table>
		            <span class="d_article">
		            	<span>共${recordCount}条，分${pageCount}页，当前第<font>${currentPage}</font>页</span>&nbsp;&nbsp;
		            	<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=1&tag=${tag}">最前页</a>
		            	<s:if test="currentPage > 1">
		            		<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=${currentPage-1}&tag=${tag}">上一页</a>
		            	</s:if>
		            	<s:else>
		            		<a href="javascript:void(0)">上一页</a>
		            	</s:else>
		            	<s:if test="currentPage < pageCount">
		            		<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=${currentPage+1}&tag=${tag}">下一页</a>
		            	</s:if>
		            	<s:else>
		            		<a href="javascript:void(0)">下一页</a>
		            	</s:else>
		            	<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=${pageCount}&tag=${tag}">最后页</a>
		            	&nbsp;转到
		            	<select onchange="changeEvent()">
                           <s:iterator begin="1" end="pageCount" var="num">
                            	<option value="${num}">${num}</option>	
                           </s:iterator>
                        </select>页
		            </span>
				</div> 
			</div>
		</div>
		<%-- <s:debug/> --%>
 	 <jsp:include page="footer.jsp" flush="true"/>
  </body>
  <script>
  
  	//select的onchange事件
  	function changeEvent() {
  		var select = document.getElementsByTagName('select')[0];
  		var value = select.options[select.options.selectedIndex].value;
  		window.location.href = "${pageContext.request.contextPath}/nav_dynamic.action?pageNum=" + value + "&tag=${tag}";
  	}
  	
  	/**
  	 * 左边二级菜单点击事件
  	 * @param i 此时li标签所在的下标
  	 */
  	var clickEvent = function () {
  		var lis = document.getElementById(id).getElementsByTagName('li');
  		for(var i = 0; i < lis.length; i++) {
  			if(lis[i] === this && typeof lis[i] === 'object') {
  				num = i;
  				break;
  			}
  		}
  		//控制跳转
  		window.location.href= "${pageContext.request.contextPath}/nav_dynamic.action?tag=" + tags[num];
  	}
	//IE兼容
	var o = null;
  	var clickEvent1 = function (  ) {
  		var lis = document.getElementById(id).getElementsByTagName('li');
  		for(var i = 0; i < lis.length; i++) {
  			if(lis[i] === o && typeof lis[i] === 'object') {
  				num = i;
  				break;
  			}
  		}
  		//控制跳转
  		window.location.href= "${pageContext.request.contextPath}/nav_dynamic.action?tag=" + tags[num];
  	}
  	//更改此时的二级菜单颜色
 	var modify = function () {
  		var menu = document.getElementById(id);
  		//遍历tags,获得当前所有标签的下标值
  		var lis = menu.getElementsByTagName('li');
  		console.log("lis:" + lis);
  		//当前的下标值
  		var num = 0;
  		for(var i = 0; i < lis.length; i++) {
  			console.log('li:' + lis[i]);
  			if(tags[i] === tag) {
  				num = i;
  				break;
  			}
  		} 


  		//删除所有li标签的class属性
  	   for(var i in lis) {
  			if(typeof lis[i] === 'object') {
  				lis[i].removeAttribute('class');
  				//给li标签注册监听器
  				if( lis[i].addEventListener) {
  					lis[i].addEventListener('click', clickEvent);
				} else {
					o = lis[i];
					lis[i].attachEvent('onclick',function() {
						clickEvent1();

					});
				}
  			}
  		} 
  		//将当前匹配的下标属性赋值
  		lis[num].setAttribute('class', 'here');
		var title = document.getElementsByClassName('union_brief')[0].getElementsByTagName('span')[0];
		title.innerHTML = lis[num].getElementsByTagName('a')[0].innerHTML.substring(0, 4);
  	}
  	modify();
  </script>
</html>
