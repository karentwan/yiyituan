package cn.yiyituan.service;

import java.util.List;
import cn.yiyituan.model.Dynamic;
import cn.yiyituan.model.PageBean;

public interface DynamicService {
	
	void save(Dynamic d);
	
	Dynamic getById(Long id);
	
	PageBean getPageBean(int pageNum, int pageSize);
	
	PageBean getPageBeanByTag(int pageNum, int pageSize, String tag);
	
	void delete(Long id);
	
	void update(Dynamic d);
	
	List<Dynamic> findAll();

	
}
