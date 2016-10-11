package com.icynara.onlineexam.beans;

public class ExamQuestion {
	private Integer id;
	private String questionTitle;
	private String questionContext;
	private String questionResult;
	private String questionScore;
	private ExamPage examPage;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getQuestionContext() {
		return questionContext;
	}

	public void setQuestionContext(String questionContext) {
		this.questionContext = questionContext;
	}

	public String getQuestionResult() {
		return questionResult;
	}

	public void setQuestionResult(String questionResult) {
		this.questionResult = questionResult;
	}

	public ExamPage getExamPage() {
		return examPage;
	}

	public void setExamPage(ExamPage examPage) {
		this.examPage = examPage;
	}

	public String getQuestionScore() {
		return questionScore;
	}

	public void setQuestionScore(String questionScore) {
		this.questionScore = questionScore;
	}
	
}
