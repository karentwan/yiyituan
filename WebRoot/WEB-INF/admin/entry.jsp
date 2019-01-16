<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html> 
<html lang="en">
<head>
	<meta charset="UTF-8">  
	<meta http-equiv="X-UA_Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width,initial-scale=1">  
	<title>录入-壹壹团</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/entry.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<!-- <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script> -->
    
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
    	.container .col-md-offset-9 .btn {
    		margin-top: 10%;
    	}
    	
    </style>
</head>
<body>
	
	<div class="container">
		<div>
			<img src="image/logo_small.png" class="img-rounded col-md-3" />
			<div class="col-md-offset-9">
				<a href="./admin_index.action" class="btn btn-primary col-md-4 col-md-offset-8">返回主页</a>
			</div>
		</div>
	</div>	
	
	<div class="container content">
     	<table class="table table-striped table-bordered">
             <tr class="">
             	<td>项目名称</td>
             	<td>项目来源</td>
             	<td>起止时间</td>
             	<td>负责人</td>
             	<td>操作</td>	
             </tr>
             
             <s:iterator value="#list" status="status" id="project">
					<s:if test="#status.odd == true">
		            	<tr>
		            	    <td>${project.name}</td>
			             	<td>${project.origin}</td>
			             	<td>${project.date}</td>
			             	<td>${project.charge}</td>
			             	<td>
			        	       <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
			        	       		修改
			        	       		<input name="id" type="hidden" value="${id}"/>
		        	       		</button>
			                   <a href="${pageContext.request.contextPath}/projectEdit_delete.action?id=${id}"><button class="btn btn-primary btn-xs">删除</button></a>
	    	    			</td>
            			</tr>
			        </s:if>
			        <s:else>
	            	    <tr>
		            	    <td>${name}</td>
			             	<td>${origin}</td>
			             	<td>${date}</td>
			             	<td>${charge}</td>
			             	<td>
			        	       <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
			        	       		修改
			        	       		<input name="id" type="hidden" value="${id}"/>
			        	       	</button>
			                   <a href="${pageContext.request.contextPath}/projectEdit_delete?id=${id}"><button class="btn btn-primary btn-xs">删除</button></a>
	    	    			</td>
              			 </tr>
	            	</s:else>
	           	</s:iterator>
		</table>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							修改
						</h4>
					</div>
					<input type="hidden" name="id"/>
					<div class="modal-body">
						项目名称
						<input type="text" name="name"/>
					</div>
					<div class="modal-body">
						项目来源
						<input type="text" name="origin"/>
					</div>
					<div class="modal-body">
						起止时间
						<input type="date" class="date-input" name="date"/>
					</div>
					<div class="modal-body">
						负&nbsp;&nbsp;责&nbsp;&nbsp;人
						<input type="text" name="charge"/>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary" id="modifyBtn">
							提交更改
						</button>
					</div>
				</div>
			</div>
		</div>
		<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">添加创新项目</button>
		<div class="modal fade class1 " id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
							<form action="#" class="form">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;
									</button>
									<h4 class="modal-title" id="myModalLabel">
										添加
									</h4>
								</div>
								<div class="modal-body" >
									项目名称
									<input type="text" name="name"/>
								</div>
								<div class="modal-body">
									项目来源
									<input type="text" class="date-input1" name="origin"/>
								</div>
								<div class="modal-body" id="time">
									起止时间
									<input type="date" name="date"/>
								</div>
								<div class="modal-body">
									负&nbsp;&nbsp;责&nbsp;&nbsp;人
									<input type="text" name="charge"/>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭
									</button>
									<button type="button" class="btn btn-primary" id="addBtn">
										添加数据
									</button>
								</div>
							</form>
							</div>
						</div>
		</div> 
  	 </div>
	 <div class="footer">
			<div class="abount">
				<a href="#">关于我们 |</a>
				<a href="#">壹壹团 |</a>
				<a href="#">南昌航空大学</a>
			</div>
			<div class="footer_bottom">
				@Copyright 南昌航空大学壹壹团 版权所有
			</div>
	 </div>
</body>
	<script>
		//模式框里面修改按钮的点击事件
		var modifyBtn = function() {
			var form = $("#myModal");
			var id = form.find("input[name='id']").val();
			var name = form.find("input[name='name']").val();
			var origin = form.find("input[name='origin']").val();
			var date = form.find("input[name='date']").val();
			var charge = form.find("input[name='charge']").val();
			console.log("id:" + id);
			console.log("name:" + name);
			console.log("origin:" + origin);
			console.log("date:" + date);
			console.log("charge:" + charge);
			$.post("./projectEdit_modify.action", {
				id:id,
				name:name,
				origin:origin,
				date:date,
				charge:charge
			}, function(data, status) {
				$("body").html(data);
			});
		}
		
		//模式框里面添加按钮的点击事件
		var addBtn = function() {
			var form = $("#myModal1");
			var name = form.find("input[name='name']").val();
			var origin = form.find("input[name='origin']").val();
			var date = form.find("input[name='date']").val();
			var charge = form.find("input[name='charge']").val();
			$.post("./projectEdit_save.action",{
				name:name,
				origin:origin,
				date:date,
				charge:charge
			}, function(data, status) {
				$("body").html(data);
			});
		}
		
		var bind = function() {
			$("#modifyBtn").click(modifyBtn);
			$("#addBtn").click(addBtn);
			$("table").find("input[name='id']").parent("button").each(function() {
				$(this).click(function() {
					var val = $(this).find("input").val();
					var myModal = $("#myModal");
					myModal.find("input[name='id']").val(val);
					var sibling = $(this).parent().siblings();
					//遍历sibling数组，给模式框赋值
					$.each(sibling, function(n, value) {
						myModal.find("input").eq(n + 1).val($(value).text());
					});
				});
			});
		 	var height = $("div.content").height();
			if( height < 500) {
				height = 500;
			}
			$("div.content").height(height); 
		}
		
		$(document).ready(bind);
		
	</script>
	
</html>
 