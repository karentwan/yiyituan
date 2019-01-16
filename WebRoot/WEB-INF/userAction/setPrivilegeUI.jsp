<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>配置权限</title>
	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script language="javascript" src="${pageContext.request.contextPath}/script/jquery.js"></script>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/pageCommon.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/file.css" />
	<script type="text/javascript">
		$(function(){
			// 指定事件处理函数
			$("[name=privilegeIds]").click(function(){
				
				// 当选中或取消一个权限时，也同时选中或取消所有的下级权限
				$(this).siblings("ul").find("input").attr("checked", this.checked);
				
				// 当选中一个权限时，也要选中所有的直接上级权限
				if(this.checked == true){
					$(this).parents("li").children("input").attr("checked", true);
				}
				
			});
		});
	</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/image/title_arrow.gif"/> 配置权限
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>

    <s:form action="user_setPrivilege">
    	<s:hidden name="id"></s:hidden>
    
        <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	 正在为【${userName}】配置权限 </div> 
        </div>
        
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
			 
					<thead>
						<tr align="LEFT" valign="MIDDLE" id="TableTitle">
							<td width="300px" style="padding-left: 7px;">
								<input type="checkbox" id="cbSelectAll" onClick="$('[name=privilegeIds]').attr('checked', this.checked)"/>
								<label for="cbSelectAll">全选</label>
							</td>
						</tr>
					</thead> 
                    
					<tbody id="TableData">
						<tr class="TableDetail1">
							<td> 

 		    <s:iterator value="#privilegeList">
				<input type="checkbox" name="privilegeIds" value="${id}" id="cb_${id}"
					<s:property value="%{id in privilegeIds ? 'checked' : ''}"/>
				/>
				<label for="cb_${id}">${name}</label>
				<br/>
			</s:iterator> 

							</td>
						</tr>
					</tbody>
                </table> 
             </div>
        </div> 
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
             <input type="image" src="${pageContext.request.contextPath}/image/save.png"/> 
             <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/image/goBack.png"/></a> 
        </div>
    </s:form>
</div>

</body>
</html>
    