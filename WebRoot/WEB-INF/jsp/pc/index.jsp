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
    <title>南昌航空大学壹壹团</title>
	<meta charset="utf-8"/>
	<meta name="author" content="万盛道">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/cssReset.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<script src="${pageContext.request.contextPath}/js/slider.js"></script>

  </head>
  
  <body>
  	<jsp:include page="nav.jsp" flush="true"/>
  	<!--banner start-->
	<div class="banner">
		<div class="ad fl">
			<!--用来显示切换图片的内容-->
			<div id="slider" >
				<div class="slider-content">
					<div class="slider-panel" style="z-index: 1; display: block;">
						<a href="javascript:void(0)"><img src="image/1.jpg" width="970px" height="300px"></a>
					</div>
					<div class="slider-panel" style="z-index: 0; display: none;">
						<a href="javascript:void(0)"><img src="image/2.jpg" width="970px" height="300px"></a>
					</div>
					<div class="slider-panel" style="z-index: 0; display: none;">
						<a href="javascript:void(0)"><img src="image/3.jpg" width="970px" height="300px"></a>
					</div>
					<div class="slider-panel" style="z-index: 0; display: none;">
						<a href="javascript:void(0)"><img src="image/4.jpg" width="970px" height="300px"></a>
					</div>
					<div class="slider-panel" style="z-index: 0; display: none;">
						<a href="javascript:void(0)"><img src="image/5.jpg" width="970px" height="300px"></a>
					</div>
					<div class="slider-panel" style="z-index: 0; display: none;">
                                                <a href="javascript:void(0)"><img src="image/6.jpg" width="970px" height="300px"></a>
                                        </div>

					<div class="slider-panel" style="z-index: 0; display: none;">
                                                <a href="javascript:void(0)"><img src="image/7.jpg" width="970px" height="300px"></a>
                                        </div>

					<div class="slider-panel" style="z-index: 0; display: none;">
                                                <a href="javascript:void(0)"><img src="image/8.jpg" width="970px" height="300px"></a>
                                        </div>

				</div>
				<!--用来显示左右播放图片的按钮-->
				<div class="slider-nav" >
					<div class="slider-prev" onclick="prev()"></div>
					<div class="slider-next" onclick="next()"></div>
				</div>

			</div>
		</div>
	</div>
	<!--banner end-->
	<!--团队招新 start-->
<!--	<div class="recuit_title">团队活动</div>-->
	<div class="recuit">
		<div class="recuit_l fl">
			<div class="union_dynamic fl">
                                <div class="union_title">团队动态</div>
                                <div class="union_dynamic_content">
                                        <ul>
                                                <s:iterator value="#dynamic.recordList" id="obj">
                                                        <li><a href="${pageContext.request.contextPath}/content_dynamic?id=${id}">${title}</a>
                                                                <span class="time">${time}</span>
                                                        </li>
                                                </s:iterator>
                                                </li>
                                        </ul>
                                </div>
                        </div>

			<div class="union_activity fr">
				<div class="union_title">团队创新</div>
				<div class="union_activity_content">
					<ul>
						<s:iterator value="#innovation.recordList" id="obj">
							<li>
								<a href="${pageContext.request.contextPath}/content_innovation?id=${id}">${title}</a>
								<span class="time">${time}</span>
							</li>
						</s:iterator>
					</ul>
				</div>
			</div>
		</div>
		<!-- <div class="recuit_r fr">
			<div class="union_title"> 
				团队招新
			</div>
			<div class="recuit_r_bottom">
				<p>壹壹团由杨词慧老师创办于2011年</p>
				<p>壹壹团是个提供学习环境的地方，面向全校招新</p>
				<p>只要你拥有一颗学习的心，想在大学里面学到知识</p>
				<p>那么就可以向杨老师申请加入壹壹团</p>
				<h1>联系方式:0791-123456</h1>
			</div>
		</div> -->
	</div>
  	<jsp:include page="footer.jsp" flush="true"/>
  </body>
</html>
