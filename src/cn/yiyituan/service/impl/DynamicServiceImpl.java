package cn.yiyituan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yiyituan.dao.DynamicDao;
import cn.yiyituan.model.Dynamic;
import cn.yiyituan.model.PageBean;
import cn.yiyituan.service.DynamicService;

@Service
@Transactional
public class DynamicServiceImpl implements DynamicService{

	@Resource
	private DynamicDao dynamicDao;
	
	@Override
	public void save(Dynamic d) {
		dynamicDao.insert(d);
	}

	@Override
	public Dynamic getById(Long id) {
		return dynamicDao.getById(id);
	}
	
	/**
	 * @param pageNum	当前页
	 * @param pageSize	每页显示的条目总数
	 * @return			一个封装了分页信息的javaBean
	 */
	public PageBean getPageBean(int pageNum, int pageSize) {
		List list = dynamicDao.getByCondition((pageNum - 1) * pageSize, pageSize);
		Long count = dynamicDao.getCount();
		PageBean bean = new PageBean(pageNum, pageSize, list, count.intValue());
		return bean;
	}
	
	/**
	 * 按标签分类查询
	 */
	public PageBean getPageBeanByTag(int pageNum, int pageSize, String tag) {
		List list = dynamicDao.getByTag((pageNum - 1) * pageSize, pageSize, tag);
		Long count = dynamicDao.getCountByTag(tag);
		PageBean bean = new PageBean(pageNum, pageSize, list, count.intValue());
		bean.setTag(tag);
		return bean;
	}

	@Override
	public void delete(Long id) {
		dynamicDao.delete(id);
	}

	@Override
	public void update(Dynamic d) {
		dynamicDao.update(d);
	}

	@Override
	public List<Dynamic> findAll() {
		return dynamicDao.findAll();
	}

}
