<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " 
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html>
  <head>
    <base href="<%=basePath%>">
    <title>创新-壹壹团</title>
	<meta name="author" content="万盛道">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/brief.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/innovate_right.css">
	<!-- 加载bootstrap -->
	<script type="text/javascript">
		//要更改的class属性名称
		var classAttr = 'here';
		//要更改的div的id
		var id = 'subnav';
		//从EL表达式获得当前标签
		var tag = '${tag}';
		//注册所有标签
		var tags = new Array;
		tags[0] = 'software';
		tags[1] = 'hardware';
		tags[2] = 'project';
	</script>
	<%-- <script src="${pageContext.request.contextPath}/js/modifyClassAttr.js"></script>
	<script src="${pageContext.request.contextPath}/js/brief_right.js"></script> --%>
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/render.js"></script>	
	<style> 
	.content {
		height: 425px;

	}
	.content .content_l {
		height: 300px;

	}	
	</style>
  </head>
  
  <body>
  	<jsp:include page="nav.jsp" flush="true"/>
  	<div class="content">
			<h1>创新</h1>
			<!--左边二级菜单-->
			<div class="content_l" id="subnav">
				<ul>
					<!-- <li class="here"><a href="javascript:void(0)">团队创新</a></li> -->
					<li class="here"><a href="javascript:void(0)">软件作品</a></li>
					<li><a href="javascript:void(0)">硬件作品</a></li>
					<li><a href="javascript:void(0)">
						<p class="project">
							创新项目
						</p>
					</a></li>
				</ul>
			</div>
			<!--右边正文内容-->
			<div class="content_r">
				<!--团队创新-->
				<div class="union_brief">
					<h2>
						<span>
							团队创新
						</span>
					</h2>
				    <table cellpadding="0" cellspacing="0">
				    	<s:iterator value="recordList" status="status" id="obj">
		            		<s:if test="#status.odd == true" >
		            			<tr class="bb"><td><a href="${pageContext.request.contextPath}/content_innovation?id=${id}"><s:property value="#obj.title"/></a></td></tr>
		            		</s:if>
		            		<s:else>
		            			<tr class="aa"><td><a href="${pageContext.request.contextPath}/content_innovation?id=${id}"><s:property value="#obj.title"/></a></td></tr>
		            		</s:else>
		            	</s:iterator>
		            </table>
		            <span class="d_article">
		            	<span>共${recordCount}条，分${pageCount}页，当前第<font>${currentPage}</font>页</span>&nbsp;&nbsp;
		            	<a href="${pageContext.request.contextPath}/nav_innovation.action?pageNum=1&tag=${tag}">最前页</a>
		            	<s:if test="currentPage > 1">
		            		<a href="${pageContext.request.contextPath}/nav_innovation.action?pageNum=${currentPage-1}&tag=${tag}">上一页</a>
		            	</s:if>
		            	<s:else>
		            		<a href="javascript:voiod(0)">上一页</a>
		            	</s:else>
		            	<s:if test="currentPage < pageCount">
		            		<a href="${pageContext.request.contextPath}/nav_innovation.action?pageNum=${currentPage+1}&tag=${tag}">下一页</a>
		            	</s:if>
		            	<s:else>
		            		<a href="javascript:void(0)">下一页</a>
		            	</s:else>
		            	<a href="${pageContext.request.contextPath}/nav_innovation.action?pageNum=${pageCount}&tag=${tag}">最后页</a>
		            	&nbsp;转到
		            	<select onchange="changeEvent()">
                           <s:iterator begin="1" end="pageCount" var="num">
                            	<option value="${num}">${num}</option>	
                           </s:iterator>
                        </select>页
		            </span>
				</div>
			</div>
			<!-- 创新项目的内容,默认隐藏 -->
			<div class="content_b" style="display : none;">
				<div class="union_brief">
					<h2>
						<span>
							创新项目
						</span>
					</h2>
				 	<table cellpadding="0" cellspacing="0">
						<thead>
							<tr class="style3">
								<th>项目名称</th>
								<th>项目来源</th>
								<th>起止时间</th>
								<th>负责人</th>
							</tr>
						</thead>
						<tbody class="pro">
						</tbody>
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
  		window.location.href = "${pageContext.request.contextPath}/nav_innovation.action?pageNum=" + value + "&tag=${tag}";
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
  		if( tags[num] !== 'project')
  			window.location.href= "${pageContext.request.contextPath}/nav_innovation.action?tag=" + tags[num]; 
		/* else {
			//切换二级菜单栏的颜色
			var menu = document.getElementById(id);
	  		//遍历tags,获得当前所有标签的下标值
	  		var lis = menu.getElementsByTagName('li');
	  		//删除所有li标签的class属性
	  	   for(var i in lis) {
	  			if(typeof lis[i] === 'object') {
	  				lis[i].removeAttribute('class');
	  				//给li标签注册监听器
	  				lis[i].addEventListener('click', clickEvent);
	  			}
	  		} 
	  		//将当前匹配的下标属性赋值
	  		lis[num].setAttribute('class', 'here'); 
		} */
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
  				lis[i].addEventListener('click', clickEvent);
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
