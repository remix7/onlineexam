package com.icynara.onlineexam.service;

import java.util.List;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.ExamPage;

public interface ExamPageService extends DaoSupport<ExamPage>{
	List<ExamPage> findByAUID(Integer auID);
}
