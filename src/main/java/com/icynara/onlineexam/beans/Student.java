package com.icynara.onlineexam.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Student implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;
	// 姓名
	private String name;
	// 手机号
	private String phone;
	//	年龄
	private Integer age;
	// 学号
	private String stuNum;
	// 登录名
	private String username;
	// 登录密码
	private String password;
	// 注册时间
	private Date registerTime;
	// 班级
	private StuClass stuClass;
	// 状态
	private Integer stuState;
	//学生成绩
	private Set<StuScore> sss = new HashSet<StuScore>();
	

	public Set<StuScore> getSss() {
		return sss;
	}

	public void setSss(Set<StuScore> sss) {
		this.sss = sss;
	}

	public Integer getStuState() {
		return stuState;
	}

	public void setStuState(Integer stuState) {
		this.stuState = stuState;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getStuNum() {
		return stuNum;
	}

	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public StuClass getStuClass() {
		return stuClass;
	}

	public void setStuClass(StuClass stuClass) {
		this.stuClass = stuClass;
	}

}
