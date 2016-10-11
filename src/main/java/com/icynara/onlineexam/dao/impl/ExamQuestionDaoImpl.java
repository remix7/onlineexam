package com.icynara.onlineexam.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icynara.onlineexam.base.DaoSupportImpl;
import com.icynara.onlineexam.beans.ExamQuestion;
import com.icynara.onlineexam.dao.ExamQuestionDao;
@Repository("examQuestionDao")
public class ExamQuestionDaoImpl extends DaoSupportImpl<ExamQuestion> implements ExamQuestionDao{

	public long findByPageID(Integer id) {
		return getSession().createQuery("FROM ExamQuestion eq WHERE eq.examPage.id=:id").setInteger("id", id).list().size();
	}

	public List<ExamQuestion> findByEpID(Integer epId) {
		return getSession().createQuery("FROM ExamQuestion eq WHERE eq.examPage.id=:id").setInteger("id", epId).list();
	}

	public String findTotalScoreByid(Integer id) {
		return (String) getSession().createQuery("SELECT SUM(eq.questionScore) FROM ExamQuestion eq WHERE eq.examPage.id=:id").setInteger("id", id).uniqueResult();
	}

}
