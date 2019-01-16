package cn.yiyituan.dao;

import java.util.List;

import cn.yiyituan.base.BaseDao;
import cn.yiyituan.model.Innovation;

public interface InnovationDao extends BaseDao<Innovation>{

	List getByCondition(int firNum, int max);
	
	Long getCount();
	
	List getByTag(int firNum, int max, String tag);
	
	Long getCountByTag(String tag);
	
}
