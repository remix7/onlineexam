package com.icynara.onlineexam.dao;

import java.util.List;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.ExamQuestion;

public interface ExamQuestionDao extends DaoSupport<ExamQuestion>{
	long findByPageID(Integer id);
	List<ExamQuestion> findByEpID(Integer epId);
	String findTotalScoreByid(Integer id);
}
