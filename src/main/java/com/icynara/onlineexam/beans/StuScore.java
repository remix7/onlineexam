package com.icynara.onlineexam.beans;

public class StuScore {
	private Integer id;
	//分数
	private float socre;
	//学生的答案
	private String stuResult;
	//那张试卷
	private ExamPage examPage;
	//那个学生
	private Student student;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public float getSocre() {
		return socre;
	}

	public void setSocre(float socre) {
		this.socre = socre;
	}

	public ExamPage getExamPage() {
		return examPage;
	}

	public void setExamPage(ExamPage examPage) {
		this.examPage = examPage;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getStuResult() {
		return stuResult;
	}

	public void setStuResult(String stuResult) {
		this.stuResult = stuResult;
	}
	
}
