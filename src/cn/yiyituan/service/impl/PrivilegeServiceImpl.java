package cn.yiyituan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.yiyituan.dao.PrivilegeDao;
import cn.yiyituan.model.Privilege;
import cn.yiyituan.service.PrivilegeService;

@Service
public class PrivilegeServiceImpl implements PrivilegeService{
	
	@Resource
	private PrivilegeDao privilegeDao;

	@Override
	public List<Privilege> getPrivilegeByIds(Long[] privilegeIds) {
		return privilegeDao.getByIds(privilegeIds);
	}

	@Override
	public List<Privilege> findAll() {
		return privilegeDao.findAll();
	}

}
