package cn.yiyituan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yiyituan.dao.InnovationDao;
import cn.yiyituan.model.Innovation;
import cn.yiyituan.model.PageBean;
import cn.yiyituan.service.InnovationService;

@Service
@Transactional
public class InnovationServiceImpl implements InnovationService {

	@Resource
	private InnovationDao innovationDao;
	
	@Override
	public Innovation getById(Long id) {
		return innovationDao.getById(id);
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize) {
		List list = innovationDao.getByCondition((pageNum - 1) * pageSize, pageSize);
		Long count = innovationDao.getCount();
		PageBean bean = new PageBean(pageNum, pageSize, list, count.intValue());
		return bean;
	}

	@Override
	public void save(Innovation i) {
		innovationDao.insert(i);
	}
	
	/**
	 * 按标签分类查询
	 */
	public PageBean getPageBeanByTag(int pageNum, int pageSize, String tag) {
		List list = innovationDao.getByTag((pageNum - 1) * pageSize, pageSize, tag);
		Long count = innovationDao.getCountByTag(tag);
		PageBean bean = new PageBean(pageNum, pageSize, list, count.intValue());
		bean.setTag(tag);
		return bean;
	}

	@Override
	public void delete(Long id) {
		innovationDao.delete(id);
	}

	@Override
	public void update(Innovation i) {
		innovationDao.update(i);
	}

	@Override
	public List<Innovation> findAll() {
		return innovationDao.findAll();
	}

}
