package com.icynara.onlineexam.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icynara.onlineexam.base.DaoSupportImpl;
import com.icynara.onlineexam.beans.ExamPage;
import com.icynara.onlineexam.dao.ExamPageDao;

@Repository("examPageDao")
public class ExamPageDaoImpl extends DaoSupportImpl<ExamPage> implements ExamPageDao{

	public List<ExamPage> findByAUID(Integer auID) {
		return getSession().createQuery("FROM ExamPage e WHERE e.adminUser.id=:id").setInteger("id", auID).list();
	}
}
