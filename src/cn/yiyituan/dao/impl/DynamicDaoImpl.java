package cn.yiyituan.dao.impl;

import java.util.List;
import org.springframework.stereotype.Repository;
import cn.yiyituan.base.BaseDaoImpl;
import cn.yiyituan.dao.DynamicDao;
import cn.yiyituan.model.Dynamic;

@Repository
public class DynamicDaoImpl extends BaseDaoImpl<Dynamic> implements DynamicDao{

	@Override
	public List getByCondition(int firNum, int max) {
		return getSession().createQuery("FROM Dynamic d ORDER BY d.time DESC")
		.setFirstResult(firNum)
		.setMaxResults(max)
		.list();
	}

	@Override
	public Long getCount() {
		return (Long) getSession().createQuery("SELECT COUNT(*) FROM Dynamic d")
				.uniqueResult();
	}

	@Override
	public List getByTag(int firNum, int max, String tag) {
		return getSession().createQuery("FROM Dynamic d WHERE d.tag = ? ORDER BY d.time DESC")
				.setParameter(0, tag)
				.setFirstResult(firNum)
				.setMaxResults(max)
				.list();
	}

	@Override
	public Long getCountByTag(String tag) {
		return (Long) getSession().createQuery("SELECT COUNT(*) FROM Dynamic d WHERE d.tag = ?")
				.setParameter(0, tag)
				.uniqueResult();
	}

}
