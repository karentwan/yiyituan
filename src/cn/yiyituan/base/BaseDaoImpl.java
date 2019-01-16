package cn.yiyituan.base;

import java.lang.reflect.ParameterizedType;
import java.util.Collections;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author wan
 * @param <T> 
 */
@SuppressWarnings("unchecked")
@Transactional
public class BaseDaoImpl<T> implements BaseDao<T>{

	@Resource
	private SessionFactory sessionFactory;
	
	//保存泛型的真实类型
	private Class<T> clazz;
	
	public BaseDaoImpl() {
		ParameterizedType pt = (ParameterizedType)this.getClass().getGenericSuperclass();
		clazz = (Class<T>) pt.getActualTypeArguments()[0];
	}
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void insert(T t) {
		getSession().save(t);
	}

	@Override
	public void update(T t) {
		getSession().update(t);
	}

	@Override
	public void delete(Long id) {
		Object obj = getById(id);
		getSession().delete(obj);
	}

	@Override
	public T getById(Long id) {
		if( id != null ) {
			return (T) getSession().get(clazz, id);
		} else {
			return null;
		}
		
	}

	@Override
	public List<T> getByIds(Long[] ids) {
		if( ids == null || ids.length == 0) {
			return Collections.EMPTY_LIST;
		} else {
			return getSession().createQuery("FROM " + clazz.getSimpleName() + " WHERE id IN (:ids)")
			.setParameterList("ids", ids)
			.list();
		}
	}

	@Override
	public List<T> findAll() {
		return getSession().createQuery("FROM " + clazz.getSimpleName())
				.list();
	}
	

}
