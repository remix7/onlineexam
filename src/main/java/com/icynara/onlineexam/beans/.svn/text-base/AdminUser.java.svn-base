package com.icynara.onlineexam.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class AdminUser implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	// 姓名
	private String name;
	// 手机号
	private String phone;
	// 邮箱
	private String email;
	// 备注
	private String au_Desc;
	// 登录名
	private String username;
	// 密码
	private String password;
	// 创建时间
	private Date createTime;
	// 创建的试卷
	private Set<ExamPage> eps = new HashSet<ExamPage>();
	// 状态
	private String state;

	//老师带的班级
	private Set<StuClass> scs = new HashSet<StuClass>();
	
	public Set<StuClass> getScs() {
		return scs;
	}

	public void setScs(Set<StuClass> scs) {
		this.scs = scs;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAu_Desc() {
		return au_Desc;
	}

	public void setAu_Desc(String au_Desc) {
		this.au_Desc = au_Desc;
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

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Set<ExamPage> getEps() {
		return eps;
	}

	public void setEps(Set<ExamPage> eps) {
		this.eps = eps;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
