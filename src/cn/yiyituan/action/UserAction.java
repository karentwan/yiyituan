package cn.yiyituan.action;

import java.util.HashSet;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Privilege;
import cn.yiyituan.model.User;
import cn.yiyituan.service.PrivilegeService;
import cn.yiyituan.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 登录的Action
 * @author wan
 */
@Controller
@Scope("prototype")
public class UserAction extends ActionSupport {
	
	private String loginname;
	
	private String loginpass;
	
	private Long id;
	
	private String userName;
	
	private String passwd;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	//一组权限Id
	private Long[] privilegeIds;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Resource
	private UserService userService;
	
	@Resource
	private PrivilegeService privilegeService;
	
	public String getLoginname() {
		return loginname;
	}

	public Long[] getPrivilegeIds() {
		return privilegeIds;
	}

	public void setPrivilegeIds(Long[] privilegeIds) {
		this.privilegeIds = privilegeIds;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getLoginpass() {
		return loginpass;
	}

	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
	}

	/**
	 * 跳转到登陆页
	 * @return
	 */
	public String loginUI() {
		return "loginUI";
	}
	
	/**
	 * 登陆的方
	 * @return
	 */
	public String login() {
		//查询当前用户
		User u = userService.findByLoginNameAndPassword(loginname, loginpass);
		//如果登陆失败
		if( u == null) {
			addFieldError("login", "用户名或密码错误�?");
			return "loginUI";
		} else {
			//登陆成功就将用户放进session当中
			ActionContext.getContext().getSession().put("user", u);
			//跳转到首�?
			return "toIndex";
		}
	}
	
	/**
	 * 退出登录的功能
	 * @return
	 */
	public String logout() {
		ActionContext.getContext().getSession().remove("user");
		return "logout";
		
	}
	
	/**
	 * 跳转到设置权限的页面，并准备回显的数据
	 * @return
	 */
	public String setPrivilegeUI() {
		//获取所有可以选的权限放进值栈
		List<Privilege> privilegeList = privilegeService.findAll();
		ActionContext.getContext().put("privilegeList", privilegeList);
		//将当前用户所拥有的权限放进值栈
		User u = userService.getById(id);
		//将用户也放进值栈当中
		ActionContext.getContext().getValueStack().push(u);
		if( u.getPrivileges() != null) {
			privilegeIds = new Long[u.getPrivileges().size()];
			int i = 0;
			for(Privilege p : u.getPrivileges()) {
				privilegeIds[i++] = p.getId();
			}
		}
		return "setPrivilegeUI";
	}
	
	public String setPrivilege() {
		//根据Id获取用户
		User user = userService.getById(id);
		List<Privilege> list = privilegeService.getPrivilegeByIds(privilegeIds);
		user.setPrivileges(new HashSet<Privilege>(list));
		userService.update(user);
System.out.println("privilegeIds:" + privilegeIds);
		return "toList";
	}
	
	public String delete() {
		userService.delete(id);
		return "toList";
	}
	
	public String addUI() {
		return "saveUI";
	}
	
	public String add() {
		User u = new User();
		u.setUserName(userName);
		u.setPasswd(passwd);
		userService.save(u);
		return "toList";
	}
	
	public String list() {
		List<User> userList = userService.findAll();
		ActionContext.getContext().put("userList", userList);
		return "list";
	}
	
}
