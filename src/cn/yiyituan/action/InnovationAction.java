package cn.yiyituan.action;

import java.util.Date;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Innovation;
import cn.yiyituan.service.InnovationService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 创新Action
 * @author wan
 */
@Controller
@Scope("prototype")
public class InnovationAction extends ActionSupport{
	
	private String title;
	
	private String content;
	
	private String tag;
	
	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Resource
	private InnovationService innovationService;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String execute() {
		Innovation i = new Innovation();
		i.setTitle(title);
		i.setContent(content);
		i.setTag(tag);
		i.setTime(new Date());
		innovationService.save(i);
		return SUCCESS;
	}

}
