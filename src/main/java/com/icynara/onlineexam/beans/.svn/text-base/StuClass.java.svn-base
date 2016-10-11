package com.icynara.onlineexam.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class StuClass implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	// 班级编号
	private String calssNum;
	// 班级名称
	private String className;
	// 这个班级的学生
	private Set<Student> stus = new HashSet<Student>();
	// 创建时间
	private Date createTime;
	// 班级的状态
	private String classState;
	// 老师
	private AdminUser adminUser; 
	
	
	public AdminUser getAdminUser() {
		return adminUser;
	}

	public void setAdminUser(AdminUser adminUser) {
		this.adminUser = adminUser;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCalssNum() {
		return calssNum;
	}

	public void setCalssNum(String calssNum) {
		this.calssNum = calssNum;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public Set<Student> getStus() {
		return stus;
	}

	public void setStus(Set<Student> stus) {
		this.stus = stus;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getClassState() {
		return classState;
	}

	public void setClassState(String classState) {
		this.classState = classState;
	}

	

}
