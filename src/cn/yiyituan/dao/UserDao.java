package cn.yiyituan.dao;

import cn.yiyituan.base.BaseDao;
import cn.yiyituan.model.User;

public interface UserDao extends BaseDao<User>{

	User findByLoginNameAndPassword(String loginname, String loginpass);
	
	
	
}
