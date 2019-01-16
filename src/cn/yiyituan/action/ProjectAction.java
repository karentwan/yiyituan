package cn.yiyituan.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Project;
import cn.yiyituan.service.ProjectService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 创新项目action
 * @author wan
 */
@Controller
@Scope("prototype")
public class ProjectAction extends ActionSupport {
	
	private List<Project> list = new ArrayList<Project>();
	
	@Resource
	private ProjectService projectService;
	
	@JSON
	public List<Project> getList() {
		return list;
	}

	public String execute() {
		list = projectService.findAll();
		return SUCCESS;
	}
	
}
