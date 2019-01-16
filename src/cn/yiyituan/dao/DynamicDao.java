package cn.yiyituan.dao;

import java.util.List;
import cn.yiyituan.base.BaseDao;
import cn.yiyituan.model.Dynamic;

public interface DynamicDao extends BaseDao<Dynamic>{

	List getByCondition(int firNum, int max);
	
	List getByTag(int firNum, int max, String tag);
	
	Long getCountByTag(String tag);
	
	Long getCount();
}
