package cn.yiyituan.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.yiyituan.dao.AwardsDao;
import cn.yiyituan.model.Awards;
import cn.yiyituan.model.PageBean;
import cn.yiyituan.service.AwardsService;

@Service
@Transactional
public class AwardsServiceImpl implements AwardsService {
	
	@Resource
	private AwardsDao awardsDao;
	
	@Override
	public void save(Awards d) {
		awardsDao.insert(d);
	}

	@Override
	public Awards getById(Long id) {
		return awardsDao.getById(id);
	}

	@Override
	public PageBean getPageBean(int pageNum, int pageSize) {
		List list = awardsDao.getByCondition((pageNum - 1) * pageSize, pageSize);
		Long count= awardsDao.getCount();
		PageBean pageBean = new PageBean(pageNum, pageSize, list, count.intValue());
		return pageBean;
	}

	@Override
	public List<Awards> findAll() {
		return awardsDao.findAll();
	}

	@Override
	public void delete(Long id) {
		awardsDao.delete(id);
	}
	
}
