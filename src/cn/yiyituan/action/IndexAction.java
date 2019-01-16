package cn.yiyituan.action;

import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.PageBean;
import cn.yiyituan.service.DynamicService;
import cn.yiyituan.service.InnovationService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class IndexAction extends ActionSupport {
	
	private Long id;
	
	@Resource
	private DynamicService dynamicService;
	
	@Resource
	private InnovationService innovationService;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String execute() {
		int pageNum = 1;
		int pageSize = 10;
		PageBean dynamicBean = dynamicService.getPageBean(pageNum, pageSize);
		ActionContext.getContext().getValueStack().getContext().put("dynamic", dynamicBean);
		PageBean innovationBean = innovationService.getPageBean(pageNum, pageSize);
		ActionContext.getContext().getValueStack().getContext().put("innovation", innovationBean);
		return SUCCESS;
	}
	

}
