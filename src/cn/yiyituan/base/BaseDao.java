package cn.yiyituan.base;

import java.util.List;

/**
 * ͨ基础的增删改查方法
 * @author wan
 * @param <T>
 */
public interface BaseDao<T> {
	
	/**
	 * 插入一条记录
	 * @param t 
	 */
	void insert(T t);
	
	/**
	 * 修改
	 * @param t 
	 */
	void update(T t);
	
	/**
	 * 删除
	 * @param id 
	 */
	void delete(Long id);
	
	/**
	 * 通过id得到实体
	 * @param id
	 * @return 
	 */
	T getById(Long id);
	
	/**
	 * 通过id数组得到记录
	 * @param ids 
	 * @return
	 */
	List<T> getByIds(Long[] ids);
	
	/**
	 * 查询所有的内容
	 * @return
	 */
	List<T> findAll();
	
}
