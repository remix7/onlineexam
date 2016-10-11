package com.icynara.onlineexam.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icynara.onlineexam.base.DaoSupportImpl;
import com.icynara.onlineexam.beans.StuScore;
import com.icynara.onlineexam.dao.StuScoreDao;

@Repository("stuScoreDao")
public class StuScoreDaoImpl extends DaoSupportImpl<StuScore> implements StuScoreDao{

	public List<StuScore> findBySutId(Integer id) {
		return getSession().createQuery("FROM StuScore s WHERE s.student.id=:id").setInteger("id", id).list();
	}

}
