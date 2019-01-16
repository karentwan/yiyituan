package cn.yiyituan.test;

import java.util.Date;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import cn.yiyituan.model.Awards;

public class TestAwards {

	@Test
	public void testInsert() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
		SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Awards a = new Awards();
		a.setAwardsName("计算机");
		a.setMember("wsd");
		a.setRank("国家级");
		a.setTime(new Date());
		session.save(a);
		session.getTransaction().commit();
	}
	
}

