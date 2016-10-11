package com.icynara.onlineexam.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icynara.onlineexam.beans.StuClass;
import com.icynara.onlineexam.dao.StuClassDao;
import com.icynara.onlineexam.service.StuClassService;

@Service("stuClassService")
@Transactional
public class StuClassServiceImpl implements StuClassService{

	@Resource
	private StuClassDao stuClassDao;
	
	public List<StuClass> findAll() {
		return stuClassDao.findAll();
	}

	public StuClass findById(Integer id) {
		return stuClassDao.findById(id);
	}

	public void add(StuClass t) {
		stuClassDao.add(t);
	}

	public void delete(Integer id) {
		stuClassDao.delete(id);
	}

	public void update(StuClass t) {
		stuClassDao.update(t);
	}
	

}
