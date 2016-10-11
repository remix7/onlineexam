package com.icynara.onlineexam.testall;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icynara.onlineexam.beans.StuClass;
import com.icynara.onlineexam.beans.Student;
import com.icynara.onlineexam.service.StuClassService;
import com.icynara.onlineexam.service.StudentService;

public class TestStudentServiceCurd {
	private ApplicationContext context;
	private StudentService sc;
	private StuClassService scs;
	@Before
	public void before() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		sc = (StudentService) context.getBean("studentService");
		scs = (StuClassService) context.getBean("stuClassService");
	}
	@Test
	public void testQueryMany() throws Exception {
		List<Student> sts = sc.findAll();
		System.out.println(sts.size());
		
	}
	@Test
	public void testQueryOne() throws Exception {
		Student student = sc.findById(1);
		System.out.println(student.getName()+" "+student.getStuClass().getCalssNum());
		
	}
	@Test
	public void testUpdate() throws Exception {
		StuClass stuClass = scs.findById(1);
		Student student = sc.findById(1);
		student.setStuClass(stuClass);
		sc.update(student);
		
	}
	@Test
	public void testDelete() throws Exception {
		sc.delete(2);
		
	}
	@Test
	public void testSave() throws Exception {
		Student s = new Student();
		s.setAge(10);
		s.setName("STUDENT-BB");
		s.setPassword("12-Nn");
		s.setPhone("123_bb");
		s.setRegisterTime(new Date());
		s.setStuNum("22342_bb");
		s.setStuState(1);
		s.setUsername("124e_bb");
		sc.add(s);
		
	}
	@Test
	public void testGet() throws Exception {
		System.out.println(sc);
		
	}
}
