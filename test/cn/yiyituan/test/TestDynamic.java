package cn.yiyituan.test;

import java.util.Date;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import cn.yiyituan.dao.DynamicDao;
import cn.yiyituan.model.Dynamic;

public class TestDynamic {
	
	//@Test
	public void testInsert() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml"); 
		SessionFactory sessionFactory = (SessionFactory)ctx.getBean("sessionFactory");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Dynamic d = new Dynamic();
		d.setTitle("测试");
		d.setTime(new Date());
		session.save(d);
		session.getTransaction().commit();
	}
	
//	@Test
	public void testBaseDao() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml"); 
		DynamicDao dd =(DynamicDao) ctx.getBean("dynamicDaoImpl");
		Dynamic d = dd.getById(1L);
		System.out.println(d.getTitle() + "\t" + d.getContent());
	}
	
//	@Test
	public void getContent() {
		
	}
	

}
