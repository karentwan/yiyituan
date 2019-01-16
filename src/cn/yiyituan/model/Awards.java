package cn.yiyituan.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 获奖
 * @author wan
 */
@Entity
@Table(name="tb_awards")
public class Awards {
	
	@Id
	@GeneratedValue
	private Long id;
	
	/**
	 * 获奖时间
	 */
	@Temporal(TemporalType.DATE)
	private Date time;
	
	/**
	 * 获奖成员
	 */
	private String member;

	/**
	 * 获奖名称
	 */
	private String awardsName;
	
	/**
	 * 获奖级别
	 */
	private String rank;

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getAwardsName() {
		return awardsName;
	}

	public void setAwardsName(String awardsName) {
		this.awardsName = awardsName;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	
}
