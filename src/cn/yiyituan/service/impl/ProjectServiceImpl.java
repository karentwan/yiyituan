package cn.yiyituan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yiyituan.dao.ProjectDao;
import cn.yiyituan.model.Project;
import cn.yiyituan.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Resource
	private ProjectDao projectDao;
	
	@Override
	public List<Project> findAll() {
		List<Project> list = projectDao.findAll();
		return list;
	}

	@Override
	public void save(Project p) {
		projectDao.insert(p);
	}

	@Override
	public void delete(Long id) {
		projectDao.delete(id);
	}

	@Override
	public void modify(Project p) {
		projectDao.update(p);
	}

	@Override
	public Project getById(Long id) {
		return projectDao.getById(id);
	}

}
