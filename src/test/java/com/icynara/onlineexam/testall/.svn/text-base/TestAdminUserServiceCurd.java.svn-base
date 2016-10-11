package com.icynara.onlineexam.testall;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.service.AdminUserService;


public class TestAdminUserServiceCurd {
	private ApplicationContext context;
	private AdminUserService asu;
	@Before
	public void before() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		asu = (AdminUserService) context.getBean("adminUserService");
	}
	@Test
	public void testQueryMany() throws Exception {
		List<AdminUser> aus = asu.findAll();
		System.out.println(aus.size());
		
	}
	@Test
	public void testQuertOne() throws Exception {
		AdminUser au = asu.findById(3);
		System.out.println(au.getAu_Desc());
	}
	
	@Test
	public void testUpdate() throws Exception {
		AdminUser au = asu.findById(4);
		au.setPhone("123345345");
		asu.update(au);
	}
	@Test
	public void testDelete() throws Exception {
		asu.delete(5);
		
	}
	@Test
	public void testSave() throws Exception {
		AdminUser au = new AdminUser();
		au.setAu_Desc("BB");
		au.setCreateTime(new Date());
		au.setEmail("BB@QBE.COM");
		au.setName("BBB");
		au.setPassword("123");
		au.setPhone("123");
		au.setState("2");
		au.setUsername("auusername");
		asu.add(au);
		
	}
}
