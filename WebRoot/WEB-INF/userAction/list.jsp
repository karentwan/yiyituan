<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>账号列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script language="javascript" src="${pageContext.request.contextPath}/script/jquery.js"></script>
    <link href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="http://g.alicdn.com/sj/dpl/1.5.1/js/sui.min.js"></script>
    <%-- <script language="javascript" src="${pageContext.request.contextPath}/script/DemoData.js" charset="utf-8"></script> --%>
	<%-- <script language="javascript" src="${pageContext.request.contextPath}/script/DataShowManager.js" charset="utf-8"></script> --%>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/pageCommon.css" />
</head>
<body>
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/image/title_arrow.gif"/><s:a href="admin_index"> 首页</s:a>/账号管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align="CENTER" valign="MIDDLE" id="TableTitle">
            	<td width="200px">用户列表</td>
                <td>相关操作</td>
            </tr>
        </thead>

		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="userList">
        
        <s:iterator value="#userList" id="obj">
			<tr class="TableDetail1 template">
				<td>${obj.userName}&nbsp;</td>
				<td>
					<s:a action="user_delete?id=%{id}" onclick="return confirm('确定要删除吗？')">删除</s:a>
					<s:a action="user_setPrivilegeUI?id=%{id}">设置权限</s:a>
				</td>
			</tr>  
        </s:iterator>

        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
		<div id="TableTail_inside">
			<s:a action="user_addUI"><img src="${pageContext.request.contextPath}/image/createNew.png" /></s:a>
        </div>
    </div>
</div>
</body>
</html>
