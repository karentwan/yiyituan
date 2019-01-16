package cn.yiyituan.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.yiyituan.base.BaseDaoImpl;
import cn.yiyituan.dao.InnovationDao;
import cn.yiyituan.model.Innovation;

@Repository
public class InnovationDaoImpl extends BaseDaoImpl<Innovation> implements InnovationDao{

	@Override
	public List getByCondition(int firNum, int max) {
		return getSession().createQuery("FROM Innovation i ORDER BY i.time DESC")
		.setFirstResult(firNum)
		.setMaxResults(max)
		.list();
	}

	@Override
	public Long getCount() {
		return (Long) getSession().createQuery("SELECT COUNT(*) FROM Innovation d")
				.uniqueResult();
	}

	@Override
	public List getByTag(int firNum, int max, String tag) {
		return getSession().createQuery("FROM Innovation i WHERE i.tag = ? ORDER BY i.time DESC")
				.setParameter(0, tag)
				.setFirstResult(firNum)
				.setMaxResults(max)
				.list();
	}

	@Override
	public Long getCountByTag(String tag) {
		return (Long) getSession().createQuery("SELECT COUNT(*) FROM Innovation i WHERE i.tag = ?")
				.setParameter(0, tag)
				.uniqueResult();
	}
}
