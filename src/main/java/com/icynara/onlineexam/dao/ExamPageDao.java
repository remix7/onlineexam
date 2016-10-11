package com.icynara.onlineexam.dao;

import java.util.List;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.ExamPage;

public interface ExamPageDao extends DaoSupport<ExamPage>{
	List<ExamPage> findByAUID(Integer auID);
}
