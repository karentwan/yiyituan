package cn.yiyituan.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Project;
import cn.yiyituan.service.ProjectService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 添加创新项目的编辑接口
 * @author wan
 */
@Controller
@Scope("prototype")
public class ProjectEditAction extends ActionSupport{
	
	private Long id;
	
	private String name;
	
	private String charge;
	
	private String origin;
	
	private String date;
	
	@Resource
	private ProjectService projectService;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCharge() {
		return charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public String modify() throws ParseException {
		Project p = projectService.getById(id);
		p.setCharge(charge);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = sdf.parse(date);
		p.setDate(d);
		p.setName(name);
		p.setOrigin(origin);
		projectService.modify(p);
		return "modify";
	}
	
	public String delete() {
		projectService.delete(id);
		return "delete";
	}
	
	public String list() {
		List<Project> list = projectService.findAll();
		ActionContext.getContext().put("list", list);
		return "list";
	}
	
	public String save() throws ParseException {
		Project p = new Project();
		p.setCharge(charge);
		p.setName(name);
		p.setOrigin(origin);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = sdf.parse(date);
		p.setDate(d);
		projectService.save(p);
		return "save";
	}

	public String edit() throws ParseException {
		Project p = new Project();
		p.setCharge(charge);
		p.setName(name);
		p.setOrigin(origin);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = sdf.parse(date);
		p.setDate(d);
		projectService.save(p);
		return SUCCESS;
	}
	
	
}
