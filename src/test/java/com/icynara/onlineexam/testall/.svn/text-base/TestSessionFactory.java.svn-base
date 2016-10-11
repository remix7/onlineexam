package com.icynara.onlineexam.testall;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSessionFactory {
	private ApplicationContext context;
	@Before
	public void before() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	@Test
	public void testSessionFactory() throws Exception {
		SessionFactory sf = (SessionFactory) context.getBean("sessionFactory");
		System.out.println(sf.getCurrentSession().toString());
	}
}
