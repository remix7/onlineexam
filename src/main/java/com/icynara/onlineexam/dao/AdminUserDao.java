package com.icynara.onlineexam.dao;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.AdminUser;

public interface AdminUserDao extends DaoSupport<AdminUser>{
	/**
	 * @Title:        findAdminUserByUsernameAndPassword 
	 * @Description:  TODO(用户登录) 
	 * @param username
	 * @param password
	 * @return:       AdminUser    
	 * @author        remix
	 * @Date          2016年9月3日 下午5:29:51
	 */
	AdminUser findAdminUserByUsernameAndPassword(String username,String password);
	/**
	 * @Title:        findAdminUserByUsername 
	 * @Description:  TODO(根据用户名查询用户) 
	 * @param username
	 * @return:       AdminUser    
	 * @author        remix
	 * @Date          2016年9月3日 下午5:30:43
	 */
	AdminUser findAdminUserByUsername(String username);
	/**
	 * 
	 * @Title:        findAdminUserByUUID 
	 * @Description:  TODO(用户激活时用到) 
	 * @param uuid
	 * @return:       AdminUser    
	 * @author        remix
	 * @Date          2016年9月3日 下午5:31:13
	 */
	AdminUser findAdminUserByUUID(String uuid);
}
