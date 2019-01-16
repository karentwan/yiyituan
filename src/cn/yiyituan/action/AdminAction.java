package cn.yiyituan.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 后台管理页面的action
 * @author wan
 */
@Controller("adminAction")
@Scope("prototype")
public class AdminAction extends ActionSupport{
	
	public String execute() {
		
		return SUCCESS;
	}
	
	public String admin() {
		return "admin";
	}
}
