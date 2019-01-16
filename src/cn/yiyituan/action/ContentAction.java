package cn.yiyituan.action;

import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Awards;
import cn.yiyituan.model.Dynamic;
import cn.yiyituan.model.Innovation;
import cn.yiyituan.service.AwardsService;
import cn.yiyituan.service.DynamicService;
import cn.yiyituan.service.InnovationService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 显示文章内容的Action
 * @author wan
 */
@Controller
@Scope("prototype")
public class ContentAction extends ActionSupport{
	
	private Long id;
	
	@Resource
	private DynamicService dynamicService;
	
	@Resource
	private InnovationService innovationService;
	
	@Resource
	private AwardsService awardsService;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String dynamic() {
		Dynamic dynamic = dynamicService.getById(id);
		ActionContext.getContext().getValueStack().push(dynamic);
		return "dynamic";
	}
	
	public String innovation() {
		Innovation innovation = innovationService.getById(id);
		ActionContext.getContext().getValueStack().push(innovation);
		return "innovation";
	}
	
	public String awards() {
		Awards  awards = awardsService.getById(id);
		ActionContext.getContext().getValueStack().push(awards);
		return "awards";
	}
	
	
	
}
