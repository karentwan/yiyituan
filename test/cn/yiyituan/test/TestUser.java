package cn.yiyituan.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.yiyituan.model.User;

public class TestUser {
	
	@Test
	public void testModel() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml"); 
		User u = (User) ctx.getBean("test", User.class);
		System.out.println("userName:" + u.getUserName());
	}
	
}
 