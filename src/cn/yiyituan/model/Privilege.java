package cn.yiyituan.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * 权限model
 * @author wan
 */
@Entity
@Table(name="tb_privilege")
public class Privilege {
	
	@GeneratedValue
	@Id
	@Column(name="privilege_id")
	private Long id;
	
	private String name;
	
	private String url;
	
	@ManyToMany
	@JoinTable(name="user_privilege",
	joinColumns=@JoinColumn(name="privilege_id", referencedColumnName="privilege_id"),
	inverseJoinColumns=@JoinColumn(name="user_id", referencedColumnName="user_id"))
	private Set<User> users = new HashSet<User>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	
	
}
