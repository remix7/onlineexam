package com.icynara.onlineexam.service;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.Student;

public interface StudentService extends DaoSupport<Student>{
	Student findByPhone(String phone);
	Student findByUserName(String username);
	Student findByUSernameAndPassword(String username,String password);
}
