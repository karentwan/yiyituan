package cn.yiyituan.service;

import java.util.List;

import cn.yiyituan.model.Awards;
import cn.yiyituan.model.PageBean;

public interface AwardsService {
	
	void save(Awards d);
	
	Awards getById(Long id);
	
	PageBean getPageBean(int pageNum, int pageSize);

	List<Awards> findAll();

	void delete(Long id);

	
	
}
