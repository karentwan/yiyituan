package cn.yiyituan.action;

import java.util.List;
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
 * 编辑内容的Action
 * @author wan
 */
@Controller
@Scope("prototype")
public class EditeAction extends ActionSupport{
	
	@Resource
	private DynamicService dynamicService;
	
	@Resource
	private InnovationService innovationService;
	
	@Resource
	private AwardsService awardsService;
	
	private Long id;
	
	private String title;
	
	private String content;
	
	private String tag;
	
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

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	/**
	 * 查询所有的动态文章
	 * @return
	 */
	public String findAllDynamic() {
		List<Dynamic> list = dynamicService.findAll();
		ActionContext.getContext().put("list", list);
		return "findAllDynamic";
	}
	
	public String findAllInnovation() {
		List<Innovation> list = innovationService.findAll();
		ActionContext.getContext().put("list", list);
		return "findAllInnovation";
	}
	
	/**
	 * 查看所有获奖编辑
	 * @return
	 */
	public String findAllAwards() {
		List<Awards> list = awardsService.findAll();
		ActionContext.getContext().put("list", list);
		return "findAllAwards";
	}

	/**
	 * 删除动态里面的文章
	 * @return
	 */
	public String deleteDynamic() {
		dynamicService.delete(id);
		return "deleteDynamic";
	}
	
	/**
	 * 删除创新里面的文章
	 * @return
	 */
	public String deleteInnovation() {
		innovationService.delete(id);
		return "deleteInnovation";
	}
	
	public String deleteAwards() {
		awardsService.delete(id);
		return "deleteAwards";
	}
	
	/**
	 * 修改动态
	 * @return
	 */
	public String modifyDynamic() {
		Dynamic d = dynamicService.getById(id);
		ActionContext.getContext().put("obj", d);
		return "modifyDynamic";
	}
	
	/**
	 * 修改获奖信息
	 * @return
	 */
	public String modifyAwards() {
		Awards a = awardsService.getById(id);
		ActionContext.getContext().put("obj", a);
		return "modifyAwards";
	}
	
	
	/**
	 * 修改之后重新提交动态文章
	 * @return
	 */
	public String recommitDynamic() {
		Dynamic d = dynamicService.getById(id);
		d.setContent(content);
		d.setTitle(title);
		dynamicService.update(d);
		return "recommitDynamic";
	}
	
	/**
	 * 修改创新文章
	 * @return
	 */
	public String modifyInnovation() {
		Innovation i = innovationService.getById(id);
		ActionContext.getContext().put("obj", i);
		return "modifyInnovation";
	}
	
	/**
	 * 重复提交创新文章
	 * @return
	 */
	public String recommitInnovation() {
		Innovation i = innovationService.getById(id);
		i.setTitle(title);
		i.setContent(content);
		innovationService.update(i);
		return "recommitInnovation";
	}
	
	/**
	 * 前往首页
	 * @return
	 */
	public String index() {
		
		return "toIndex";
	}
	
}
