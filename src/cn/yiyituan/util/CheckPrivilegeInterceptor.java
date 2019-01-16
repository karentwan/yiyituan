package cn.yiyituan.util;

import cn.yiyituan.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 检查权限的拦截器
 * @author wan
 */
public class CheckPrivilegeInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		User user =(User)ActionContext.getContext().getSession().get("user");
		String namespace = invocation.getProxy().getNamespace();
		String actionName = invocation.getProxy().getActionName();
		String privUrl = namespace + actionName; //对应的权限URL
		
		if( user == null) {
			if(privUrl.startsWith("/user_login") ) {
				//如果失去登陆就放行
				return invocation.invoke();
			} else {
				//如果用户名为 空的话，那么跳转到登陆界面
				return "loginUI";
				//如果已经登录，那么判断权限
			}
			
		} else {
			if(user.hasPrivilege(privUrl) || privUrl.startsWith("/user_logout")) {
				//如果有权限就放行
				return invocation.invoke();
			} else {
				return "noPrivilegeError";
			}
		}
		
	}

}
