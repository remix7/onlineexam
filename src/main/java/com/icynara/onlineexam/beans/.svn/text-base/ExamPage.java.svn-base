package com.icynara.onlineexam.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class ExamPage implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer id;
	// 试卷标题
	private String examTitle;
	// 试卷详情
	private String examDesc;
	// 试卷内容
	private String examContext;
	// 考试时间长度
	private Integer examTime;
	// 试卷创建时间
	private Date createTime;
	// 试卷过期时间
	private Date overdueTime;
	// 试卷创建的者
	private AdminUser adminUser;
	// 试卷答案 采用,分割 比对时转成数组
	private String examResult;
	//学生的成绩
	private Set<StuScore> sss = new HashSet<StuScore>();
	//试题
	private Set<ExamQuestion> exs = new HashSet<ExamQuestion>();
	
	public Set<ExamQuestion> getExs() {
		return exs;
	}

	public void setExs(Set<ExamQuestion> exs) {
		this.exs = exs;
	}

	public Set<StuScore> getSss() {
		return sss;
	}

	public void setSss(Set<StuScore> sss) {
		this.sss = sss;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getExamTitle() {
		return examTitle;
	}

	public void setExamTitle(String examTitle) {
		this.examTitle = examTitle;
	}

	public String getExamDesc() {
		return examDesc;
	}

	public void setExamDesc(String examDesc) {
		this.examDesc = examDesc;
	}

	public String getExamContext() {
		return examContext;
	}

	public void setExamContext(String examContext) {
		this.examContext = examContext;
	}

	public Integer getExamTime() {
		return examTime;
	}

	public void setExamTime(Integer examTime) {
		this.examTime = examTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getOverdueTime() {
		return overdueTime;
	}

	public void setOverdueTime(Date overdueTime) {
		this.overdueTime = overdueTime;
	}

	public AdminUser getAdminUser() {
		return adminUser;
	}

	public void setAdminUser(AdminUser adminUser) {
		this.adminUser = adminUser;
	}

	public String getExamResult() {
		return examResult;
	}

	public void setExamResult(String examResult) {
		this.examResult = examResult;
	}

}
