package cn.yiyituan.action;

import java.util.HashMap;
import java.util.Map;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.Action;

/**
 * 返回一个json数据的Action
 * @author wan
 */
@Controller("jsonAction")
@Scope("prototype")
public class JSONAction implements Action{
	
//	private String name;
	
	private Map<String, Object> map = new HashMap<String, Object>();
	
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
	
	@JSON
	public Map getMap() {
		return map;
	}
	
	public String execute() {
//		System.out.println("name:" + getName());
//		map.put("name", getName());
		map.put("properties", "I'm content, please wait me!");
		return SUCCESS;
	}
	
}
