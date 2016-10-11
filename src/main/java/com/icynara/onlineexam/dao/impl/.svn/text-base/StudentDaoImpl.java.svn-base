package com.icynara.onlineexam.dao.impl;

import org.springframework.stereotype.Repository;

import com.icynara.onlineexam.base.DaoSupportImpl;
import com.icynara.onlineexam.beans.Student;
import com.icynara.onlineexam.dao.StudentDao;
import com.icynara.onlineexam.utils.MD5EncodingUtil;
@Repository("studentDao")
public class StudentDaoImpl extends DaoSupportImpl<Student> implements StudentDao{

	public Student findByPhone(String phone) {
		return (Student) getSession().createQuery("FROM Student s WHERE s.phone=:phone").setString("phone", phone).uniqueResult();
	}

	public Student findByUserName(String username) {
		return (Student) getSession().createQuery("FROM Student s WHERE s.username=:username").setString("username", username).uniqueResult();
	}

	public Student findByUSernameAndPassword(String username, String password) {
		return (Student) getSession().createQuery("FROM Student s WHERE s.username=:username AND s.password=:password").setString("username", username).setString("password", MD5EncodingUtil.getMD5(password)).uniqueResult();
	}

}
