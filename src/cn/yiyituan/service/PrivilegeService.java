package cn.yiyituan.service;

import java.util.List;

import cn.yiyituan.model.Privilege;

public interface PrivilegeService {

	List<Privilege> getPrivilegeByIds(Long[] privilegeIds);

	List<Privilege> findAll();

}
