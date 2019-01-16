package cn.yiyituan.dao.impl;

import org.springframework.stereotype.Repository;
import cn.yiyituan.base.BaseDaoImpl;
import cn.yiyituan.dao.UserDao;
import cn.yiyituan.model.User;

@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{
	
	@Override
	public User findByLoginNameAndPassword(String loginname, String loginpass) {
		return (User) getSession().createQuery("FROM User u WHERE u.userName = ? AND u.passwd = ?")
				.setParameter(0, loginname)
				.setParameter(1, loginpass)
				.uniqueResult();
	}


}
