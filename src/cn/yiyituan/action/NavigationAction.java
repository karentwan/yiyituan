package cn.yiyituan.action;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Awards;
import cn.yiyituan.model.PageBean;
import cn.yiyituan.service.AwardsService;
import cn.yiyituan.service.DynamicService;
import cn.yiyituan.service.InnovationService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 将Action映射到静态页面并分页
 * @author wan
 */
@Controller
@Scope("prototype")
public class NavigationAction extends ActionSupport {
	
	//当前页码
	private int pageNum = 1;
	//每页的数据量
	private int pageSize = 5;
	
	private String tag = null;
	
	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Resource
	private DynamicService dynamicService;
	
	@Resource
	private InnovationService innovationService;
	
	@Resource
	private AwardsService awardsService;
	
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * 动�?
	 * @return
	 */
	public String dynamic() {
		if( pageNum >= 1) {
			if( tag == null) {
				tag = "achievement";
			}
			PageBean pageBean = dynamicService.getPageBeanByTag(pageNum, pageSize, tag);
			ActionContext.getContext().getValueStack().push(pageBean);
		}
		return "dynamic";
	}
	
	/**
	 * 简介
	 * @return
	 */
	public String brief() {
		
		return "brief";
	}
	
	/**
	 * 创新
	 * @return
	 */
	public String innovation() {
		if( pageNum >= 1) {
			if( tag == null) {
				tag = "software";
			}
			PageBean pageBean = innovationService.getPageBeanByTag(pageNum, pageSize, tag);
			ActionContext.getContext().getValueStack().push(pageBean);
		}
		return "innovation";
	}
	
	/**
	 * 招新
	 * @return
	 */
	public String recruit() {
		
		return "recruit";
	}
	
	/**
	 * 首页
	 * @return
	 */
	public String index() {
		if( pageNum >= 1) {
			pageSize = 10;
			PageBean dynamicBean = dynamicService.getPageBean(pageNum, pageSize);
			ActionContext.getContext().getValueStack().getContext().put("dynamic", dynamicBean);
			PageBean innovationBean = innovationService.getPageBean(pageNum, pageSize);
			ActionContext.getContext().getValueStack().getContext().put("innovation", innovationBean);
		}
		return "index";
	}
	
	/**
	 * 获奖
	 * @return
	 */
	public String win() {
//		if( pageNum >= 1) {
//			PageBean pageBean = awardsService.getPageBean(pageNum, pageSize);
//			ActionContext.getContext().getValueStack().push(pageBean);
//		}
		List<Awards> list = awardsService.findAll();
		ActionContext.getContext().put("awardsList", list);
		return "win";
	}
	
}
