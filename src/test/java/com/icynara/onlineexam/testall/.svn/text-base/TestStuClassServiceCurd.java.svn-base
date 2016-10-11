package com.icynara.onlineexam.testall;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icynara.onlineexam.beans.StuClass;
import com.icynara.onlineexam.service.StuClassService;

public class TestStuClassServiceCurd {
	private ApplicationContext context;
	private StuClassService scs;
	@Before
	public void before() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		scs = (StuClassService) context.getBean("stuClassService");
	}
	@Test
	public void testQueryMany() throws Exception {
		List<StuClass> scss = scs.findAll();
		System.out.println(scss.size());
		
	}
	@Test
	public void testQureyOne() throws Exception {
		StuClass sc = scs.findById(1);
		System.out.println(sc.getCreateTime());
	}
	@Test
	public void testUpdate() throws Exception {
		StuClass sc = scs.findById(1);
		sc.setClassState("3");
		scs.update(sc);
		
	}
	@Test
	public void testDelete() throws Exception {
		scs.delete(3);
		
	}
	@Test
	public void testSave() throws Exception {
		StuClass sc = new StuClass();
		sc.setCalssNum("BBB");
		sc.setClassName("BBB");
		sc.setClassState("1");
		sc.setCreateTime(new Date());
		scs.add(sc);
	}
	@Test
	public void testGet() throws Exception {
		System.out.println(scs.toString());
		
	}
}
