package cn.yiyituan.service;

import java.util.List;
import cn.yiyituan.model.Project;

public interface ProjectService {
	
	public List<Project> findAll();

	void save(Project p);
	
	void delete(Long id);
	
	void modify(Project p);
	
	Project getById(Long id);
	
	
}
