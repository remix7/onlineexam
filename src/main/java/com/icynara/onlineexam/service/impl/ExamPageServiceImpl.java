package com.icynara.onlineexam.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icynara.onlineexam.beans.ExamPage;
import com.icynara.onlineexam.dao.ExamPageDao;
import com.icynara.onlineexam.service.ExamPageService;
@Service("examPageService")
@Transactional
public class ExamPageServiceImpl implements ExamPageService{
	
	@Resource
	private ExamPageDao examPageDao;
	
	public List<ExamPage> findAll() {
		return examPageDao.findAll();
	}

	public ExamPage findById(Integer id) {
		return examPageDao.findById(id);
	}

	public void add(ExamPage t) {
		examPageDao.add(t);
	}

	public void delete(Integer id) {
		examPageDao.delete(id);
	}

	public void update(ExamPage t) {
		examPageDao.update(t);
	}

	public List<ExamPage> findByAUID(Integer auID) {
		return examPageDao.findByAUID(auID);
	}

}
