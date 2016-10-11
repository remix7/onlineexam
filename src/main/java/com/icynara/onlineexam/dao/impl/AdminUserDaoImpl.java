package com.icynara.onlineexam.dao.impl;

import org.springframework.stereotype.Repository;

import com.icynara.onlineexam.base.DaoSupportImpl;
import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.dao.AdminUserDao;
import com.icynara.onlineexam.utils.MD5EncodingUtil;

@Repository("adminUserDao")
public class AdminUserDaoImpl extends DaoSupportImpl<AdminUser> implements AdminUserDao {

	public AdminUser findAdminUserByUsernameAndPassword(String username, String password) {
		return (AdminUser) getSession().createQuery("FROM AdminUser au WHERE au.username=:username AND au.password=:password").setString("username", username).setString("password", MD5EncodingUtil.getMD5(password)).uniqueResult();
		
	}

	public AdminUser findAdminUserByUsername(String username) {
		return (AdminUser) getSession().createQuery("FROM AdminUser au WHERE au.username=:username").setString("username", username).uniqueResult();
	}

	public AdminUser findAdminUserByUUID(String uuid) {
		return (AdminUser) getSession().createQuery("FROM AdminUser au WHERE au.au_Desc=:auDesc").setString("auDesc", uuid).uniqueResult();
	}

}
