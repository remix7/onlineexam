package com.icynara.onlineexam.dao;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.Student;

public interface StudentDao extends DaoSupport<Student>{
	Student findByPhone(String phone);
	Student findByUserName(String username);
	Student findByUSernameAndPassword(String username,String password);
}
