
package com.icynara.onlineexam.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icynara.onlineexam.beans.Student;
import com.icynara.onlineexam.dao.StudentDao;
import com.icynara.onlineexam.service.StudentService;

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService{

	@Resource
	private StudentDao studentDao;
	
	public List<Student> findAll() {
		return studentDao.findAll();
	}

	public Student findById(Integer id) {
		return studentDao.findById(id);
	}

	public void add(Student t) {
		studentDao.add(t);
	}

	public void delete(Integer id) {
		studentDao.delete(id);
	}

	public void update(Student t) {
		studentDao.update(t);
	}

	public Student findByPhone(String phone) {
		return studentDao.findByPhone(phone);
	}

	public Student findByUserName(String username) {
		return studentDao.findByUserName(username);
	}

	public Student findByUSernameAndPassword(String username, String password) {
		return studentDao.findByUSernameAndPassword(username, password);
	}

}
