<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
		            	<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=1">最前页</a>
		            	<s:if test="currentPage > 1">
		            		<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=${currentPage-1}">上一页</a>
		            	</s:if>
		            	<s:else>
		            		<a href="javascript:void(0)">上一页</a>
		            	</s:else>
		            	<s:if test="currentPage < pageCount">
		            		<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=${currentPage+1}">下一页</a>
		            	</s:if>
		            	<s:else>
		            		<a href="javascript:void(0)">下一页</a>
		            	</s:else>
		            	<a href="${pageContext.request.contextPath}/nav_dynamic.action?pageNum=${pageCount}">最后页</a>
		            	&nbsp;转到
		            	<select onchange="changeEvent()">
                           <s:iterator begin="1" end="pageCount" var="num">
                            	<option value="${num}">${num}</option>	
                           </s:iterator>
                        </select>页
		            </span>
				</div>