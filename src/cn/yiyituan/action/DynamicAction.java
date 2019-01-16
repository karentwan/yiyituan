package cn.yiyituan.action;

import java.util.Date;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Dynamic;
import cn.yiyituan.service.DynamicService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 后台编辑动态的Action
 * @author wan
 */
@Controller
@Scope("prototype")
public class DynamicAction extends ActionSupport{
	
	private String title;
	
	private String content;
	
	private String tag;

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

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

	@Resource
	private DynamicService dynamicService;
	
	public String execute() {
		Dynamic d = new Dynamic();
		d.setTitle(title);
		d.setContent(content);
System.out.println("content:" + content);
		d.setTag(tag);
		d.setTime(new Date());
		dynamicService.save(d);
		return SUCCESS;
	}
	
	
}
