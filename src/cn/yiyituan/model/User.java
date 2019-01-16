package cn.yiyituan.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * @author wan
 */
@Entity
@Table(name="tb_user")
public class User {
	
	@Id
	@GeneratedValue
	@Column(name="user_id")
	private Long id;
	
	private String userName;
	
	private String passwd;
	
	/**
	 * 这个用户拥有的权限
	 */
	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(name="user_privilege",
	joinColumns=@JoinColumn(name="user_id", referencedColumnName="user_id"),
	inverseJoinColumns=@JoinColumn(name="privilege_id", referencedColumnName="privilege_id"))
	private Set<Privilege> privileges = new HashSet<Privilege>();
	
	public Set<Privilege> getPrivileges() {
		return privileges;
	}

	public void setPrivileges(Set<Privilege> privileges) {
		this.privileges = privileges;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	/**
	 * 判断这个用户是否拥有这个权限
	 * @param url
	 * @return
	 */
	public boolean hasPrivilege(String url) {
		//如果是超级管理员，那么将拥有所有权限
		if( isAdmin()) 
			return true;
		for(Privilege p : privileges) {
			if(url.contains(p.getUrl()))
				return true;
		}
		return false;
	}

	/**
	 * 判断是否是超级管理员
	 * @return
	 */
	private boolean isAdmin() {
		return "yyt".equals(userName);
	}
	
}
