package cn.yiyituan.service;

import java.util.List;

import cn.yiyituan.model.User;

public interface UserService {

	User findByLoginNameAndPassword(String loginname, String loginpass);

	void delete(Long id);

	User getById(Long id);

	void update(User user);

	List<User> findAll();

	void save(User u);

}
