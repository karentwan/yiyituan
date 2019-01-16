package cn.yiyituan.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.yiyituan.model.Awards;
import cn.yiyituan.service.AwardsService;
import com.opensymphony.xwork2.ActionSupport;


@Controller
@Scope("prototype")
public class AwardsAction extends ActionSupport{
	
	private Long id;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	private String rank;
	
	private String awardsName;
	
	private String member;
	
	private String time;
	
	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getAwardsName() {
		return awardsName;
	}

	public void setAwardsName(String awardsName) {
		this.awardsName = awardsName;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Resource
	private AwardsService awardsService;
	
	public String editeUI() {
		
		return "editeUI";
	}
	
	/**
	 * 编辑
	 * @return
	 * @throws ParseException
	 */
	public String edite() throws ParseException {
		Awards a = new Awards();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = sdf.parse(time);
		a.setTime(d);
		a.setMember(member);
		a.setRank(rank);
		a.setAwardsName(awardsName);
		awardsService.save(a);
		return "edite";
	}
	
	public String recommitAwards() throws ParseException {
		Awards a = awardsService.getById(id);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = sdf.parse(time);
		a.setTime(d);
		a.setMember(member);
		a.setRank(rank);
		a.setAwardsName(awardsName);
		awardsService.save(a);
		return "recommitAwards";
	}
	
	
	
}
