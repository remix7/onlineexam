package com.icynara.onlineexam.service;

import com.icynara.onlineexam.base.DaoSupport;
import com.icynara.onlineexam.beans.AdminUser;

public interface AdminUserService extends DaoSupport<AdminUser>{
	AdminUser findAdminUserByUsernameAndPassword(String username,String password);
	AdminUser findAdminUserByUserName(String username);
	AdminUser findAdminUserByUUID(String uuid);
}
