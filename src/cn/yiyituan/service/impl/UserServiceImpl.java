package cn.yiyituan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yiyituan.dao.UserDao;
import cn.yiyituan.model.User;
import cn.yiyituan.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	
	@Override
	public User findByLoginNameAndPassword(String loginname, String loginpass) {
		return userDao.findByLoginNameAndPassword(loginname, loginpass);
	}

	@Override
	public void delete(Long id) {
		userDao.delete(id);
	}

	@Override
	public User getById(Long id) {
		return userDao.getById(id);
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public void save(User u) {
		userDao.insert(u);
	}

	
}
