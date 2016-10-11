package com.icynara.onlineexam.testall;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.beans.ExamPage;
import com.icynara.onlineexam.service.AdminUserService;
import com.icynara.onlineexam.service.ExamPageService;

public class TestExamPageServiceCurd {
	private ApplicationContext context;
	private ExamPageService eps;
	private AdminUserService aus;

	@Before
	public void before() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		eps = (ExamPageService) context.getBean("examPageService");
		aus = (AdminUserService) context.getBean("adminUserService");
	}
	@Test
	public void testQueryMany() throws Exception {
		List<ExamPage> epss = eps.findAll();
		System.out.println(epss.size());
		List<ExamPage> epss1 = eps.findAll();
		System.out.println(epss1.size());
		
	}
	@Test
	public void testQueryOneCasCade() throws Exception {
		
		ExamPage ex = eps.findById(1);
		System.out.println(ex.getExamDesc()+" "+ex.getAdminUser().getAu_Desc());
		
	}
	@Test
	public void testUpdate() throws Exception {
		AdminUser au = aus.findById(3);
		ExamPage ex = eps.findById(1);
		ex.setAdminUser(au);
		eps.update(ex);
		
	}
	
	@Test
	public void testDelete() throws Exception {
		eps.delete(2);
	}
	@Test
	public void testAdd() throws Exception {
		ExamPage ep = new ExamPage();
		ep.setCreateTime(new Date());
		ep.setExamContext("CCC");
		ep.setExamDesc("CCC");
		ep.setExamResult("A,A,A");
		ep.setExamTime(150);
		ep.setExamTitle("CCC");
		ep.setOverdueTime(getDate("2016-10-01 12:0:0"));
		eps.add(ep);
	}
	public Date getDate(String str) throws ParseException{
		Date d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str);
		return d;
	}

	@Test
	public void testGet() throws Exception {
		System.out.println(eps);
	}
}
