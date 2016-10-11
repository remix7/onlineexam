package com.icynara.onlineexam.testall;

import javax.sql.DataSource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDataSource {
	private ApplicationContext context;
	@Before
	public void before() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	@Test
	public void testDataSource() throws Exception {
		DataSource ds = (DataSource) context.getBean("dataSource");
		System.out.println(ds.getConnection());
	}
}
