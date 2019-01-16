package cn.yiyituan.dao;

import java.util.List;
import cn.yiyituan.base.BaseDao;
import cn.yiyituan.model.Awards;

public interface AwardsDao extends BaseDao<Awards>{

	List getByCondition(int firNum, int max);
	
	Long getCount();
	
}
