package cn.yiyituan.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 创新项目栏
 * @author wan
 */
@Entity
@Table(name="tb_project")
public class Project {

	@GeneratedValue
	@Id
	private Long id;
	//项目名称
	private String name;
	//项目来源
	private String origin;
	//起始时间
	@Temporal(TemporalType.DATE)
	private Date date;
	//项目负责人
	private String charge;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getCharge() {
		return charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}
	
	
}
