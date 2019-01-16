package cn.yiyituan.dao.impl;

import java.util.List;
import org.springframework.stereotype.Repository;
import cn.yiyituan.base.BaseDaoImpl;
import cn.yiyituan.dao.AwardsDao;
import cn.yiyituan.model.Awards;

@Repository
public class AwardsDaoImpl extends BaseDaoImpl<Awards> implements AwardsDao{

	@Override
	public List getByCondition(int firNum, int max) {
		return getSession().createQuery("FROM Awards a ORDER BY a.time DESC")
				.setFirstResult(firNum)
				.setMaxResults(max)
				.list();
	}
	
	/**
	 * 获取所有的获奖数据
	 */
	public List findAll() {
		return getSession().createQuery("FROM Awards a ORDER BY a.rank, a.time DESC").list();
	}

	@Override
	public Long getCount() {
		return (Long) getSession().createQuery("SELECT COUNT(*) FROM Awards a")
				.uniqueResult();
	}
	
}
