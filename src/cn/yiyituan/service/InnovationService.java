package cn.yiyituan.service;

import java.util.List;
import cn.yiyituan.model.Innovation;
import cn.yiyituan.model.PageBean;

public interface InnovationService {
	
	void save(Innovation i);

	Innovation getById(Long id);
	
	PageBean getPageBean(int pageNum, int pageSize);
	
	PageBean getPageBeanByTag(int pageNum, int pageSize, String tag);
	
	void delete(Long id);
	
	void update(Innovation i);
	
	List<Innovation> findAll();
	
}
