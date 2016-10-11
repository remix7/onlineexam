package com.icynara.onlineexam.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icynara.onlineexam.beans.StuScore;
import com.icynara.onlineexam.dao.StuScoreDao;
import com.icynara.onlineexam.service.StuScoreService;
@Service("stuScoreService")
@Transactional
public class StuScoreServiceImpl implements StuScoreService{

	@Resource
	private StuScoreDao stuScoreDao;
	
	public List<StuScore> findAll() {
		return stuScoreDao.findAll();
	}

	public StuScore findById(Integer id) {
		return stuScoreDao.findById(id);
	}

	public void add(StuScore t) {
		stuScoreDao.add(t);
	}

	public void delete(Integer id) {
		stuScoreDao.delete(id);
	}

	public void update(StuScore t) {
		stuScoreDao.update(t);
	}

	public List<StuScore> findBySutId(Integer id) {
		return stuScoreDao.findBySutId(id);
	}

}
