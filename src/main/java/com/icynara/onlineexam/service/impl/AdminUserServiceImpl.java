package com.icynara.onlineexam.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.dao.AdminUserDao;
import com.icynara.onlineexam.service.AdminUserService;
@Service("adminUserService")
@Transactional
public class AdminUserServiceImpl implements AdminUserService{
	
	@Resource
	private AdminUserDao adminUserDao;
	
	
	public List<AdminUser> findAll() {
		return adminUserDao.findAll();
	}

	public AdminUser findById(Integer id) {
		return adminUserDao.findById(id);
	}

	public void add(AdminUser t) {
		adminUserDao.add(t);
	}

	public void delete(Integer id) {
		adminUserDao.delete(id);
	}

	public void update(AdminUser t) {
		adminUserDao.update(t);;
	}

	public AdminUser findAdminUserByUsernameAndPassword(String username, String password) {
		return adminUserDao.findAdminUserByUsernameAndPassword(username, password);
	}

	public AdminUser findAdminUserByUserName(String username) {
		return adminUserDao.findAdminUserByUsername(username);
	}

	public AdminUser findAdminUserByUUID(String uuid) {
		return adminUserDao.findAdminUserByUUID(uuid);
	}

}
