package com.icynara.onlineexam.action;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icynara.onlineexam.base.BaseAction;
import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.utils.MD5EncodingUtil;
import com.icynara.onlineexam.utils.SendEmail;
import com.opensymphony.xwork2.ActionContext;

/**
 * @ClassName:AdminUserAction.java
 * @Description:TODO(等我喝醉了再来修复。) 
 * @author:remix
 * @version:V1.0  
 * @Date:2016年9月3日 下午5:29:30
 */
@Controller
@Scope("prototype")
public class AdminUserAction extends BaseAction<AdminUser>{

	private static final long serialVersionUID = 1L;
	//验证码
	private String checkcode;
	//激活回执码
	private String mailCheck;
	/**
	 * 
	 * @Title:        mailCheck 
	 * @Description:  TODO(根据发送给用户的uuid来激活用户) 
	 * @param:        @return ERROR 跳转到登录界面 mesage 到错误提示界面
	 * @return:       String    
	 * @throws 		  Exception  
	 * @author        remix
	 * @Date          2016年9月3日 下午5:15:06
	 */
	public String mailCheck() throws Exception{
		String imageCode = (String) ActionContext.getContext().getSession().get("imageChack");
		AdminUser au = adminUserService.findAdminUserByUUID(mailCheck);
		if(au!=null&&checkcode != null&&checkcode.equals(imageCode)){
			au.setState("1");
			adminUserService.update(au);
			ActionContext.getContext().getSession().remove("imageChack");
			ActionContext.getContext().put("message", "激活成功！");
			return ERROR;
		}
		ActionContext.getContext().getSession().remove("imageChack");
		ActionContext.getContext().put("message", "回执码不正确或验证码不正确!");
		return "message";
		
	}
	/**
	 * @Title:        regiest 
	 * @Description:  TODO(用户注册具有后台判断字段功能) 
	 * @return:       String ERROR 跳转到登录界面 mesage 到错误提示界面 
	 * @throws    	  Exception   
	 * @author        remix
	 * @Date          2016年9月3日 下午5:16:44
	 */
	public String regiest() throws Exception {
		String imageCode = (String) ActionContext.getContext().getSession().get("imageChack");
		String uuid = UUID.randomUUID().toString();
		AdminUser aus = adminUserService.findAdminUserByUserName(model.getUsername());
		if(aus == null&&checkcode != null&&checkcode.equals(imageCode)){
			AdminUser au = new AdminUser();
			au.setCreateTime(new Date());
			au.setEmail(model.getEmail());
			au.setName(model.getName());
			au.setPassword(MD5EncodingUtil.getMD5(model.getPassword()));
			au.setPhone(model.getPhone());
			au.setState("2");
			au.setAu_Desc(uuid);
			au.setUsername(model.getUsername());
			adminUserService.add(au);
			if(SendEmail.send(model.getEmail(), uuid)){
				ActionContext.getContext().getSession().remove("imageChack");
				ActionContext.getContext().put("message", "注册成功请前往邮箱查询激活邮件！");
				return ERROR;
			}
		}
		ActionContext.getContext().getSession().remove("imageChack");
		ActionContext.getContext().put("message", "用户名已经存在，或验证码错误！");
		return "message";
	}
	/**
	 * @Title:        delete 
	 * @Description:  TODO(根据id删除用户有判断功能) 
	 * @return:       String    message 错误提示
	 * @throws 		  Exception 
	 * @author        remix
	 * @Date          2016年9月3日 下午5:18:12
	 */
	public String delete() throws Exception {
		AdminUser au = adminUserService.findById(model.getId());
		if(au != null){
			au.setEps(null);
			au.setScs(null);
			adminUserService.delete(model.getId());
			return listAll();
		}
		ActionContext.getContext().put("message", "删除失败！");
		return "message";
	}
	
	/**
	 * @Title:        update 
	 * @Description:  TODO(更新用户信息) 
	 * @return:       String  listAll 查询出所以的用户
	 * @throws 		  Exception
	 * @author        remix
	 * @Date          2016年9月3日 下午5:19:06
	 */
	public String update() throws Exception {
		AdminUser au = adminUserService.findById(model.getId());
		au.setAu_Desc(model.getAu_Desc());
		au.setEmail(model.getEmail());
		au.setName(model.getName());
		au.setPassword(MD5EncodingUtil.getMD5(model.getPassword()));
		au.setPhone(model.getPhone());
		au.setState(model.getState());
		au.setUsername(model.getUsername());
		adminUserService.update(au);
		return listAll();
	}
	/**
	 * @Title:        updateUI 
	 * @Description:  TODO(更新用户准备数据) 
	 * @return:       String  updateUI更新界面  message 错误提示
	 * @throws    	  Exception    
	 * @author        remix
	 * @Date          2016年9月3日 下午5:20:01
	 */
	public String updateUI() throws Exception {
		if(model.getId()!=null){
			AdminUser au = adminUserService.findById(model.getId());
			ActionContext.getContext().getValueStack().push(au);
			return "updateUI";
		}
		ActionContext.getContext().put("message", "发生未知错误。");
		return "message";
	}
	
	/**
	 * @Title:        listAll 
	 * @Description:  TODO(用户列表不含admin) 
	 * @throws 		  Exception    
	 * @return:       String  listAll 用户列表界面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:21:16
	 */
	public String listAll() throws Exception {
		List<AdminUser> aus = adminUserService.findAll();
		aus.remove(0);
		ActionContext.getContext().put("auList", aus);
		return	"listAll";
	}
	/**
	 * @Title:        logOut 
	 * @Description:  TODO(退出登录 销毁session) 
	 * @throws 		  Exception    
	 * @return:       String    ERROR 返回登录界面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:22:04
	 */
	public String logOut() throws Exception {
		ActionContext.getContext().getSession().remove("adminUser");
		return ERROR;
	}
	/**
	 * 
	 * @Title:        login 
	 * @Description:  TODO(登录 admin具有完全控制权限 别的用户没有) 
	 * @throws 		  Exception    
	 * @return:       String    loginSuccess 登录成功的主页 ERROR错误消息页面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:22:46
	 */
	public String login() throws Exception{
		String imageCode = (String) ActionContext.getContext().getSession().get("imageChack");
		AdminUser au =  adminUserService.findAdminUserByUsernameAndPassword(model.getUsername(), model.getPassword());
		if(checkcode != null&&checkcode.equals(imageCode)&&au!=null){
			if("0".equals(au.getState())||"1".equals(au.getState())){
				ActionContext.getContext().getSession().put("adminUser", au);
				return "loginSuccess";
			}else{
				ActionContext.getContext().getSession().remove("imageChack");
				ActionContext.getContext().put("message", "用户未激活!");
				return ERROR;
			}
		}else{
			ActionContext.getContext().getSession().remove("imageChack");
			ActionContext.getContext().put("message", "用户名密码或验证码不正确!");
			return ERROR;
		}
	}
	public String getCheckcode() {
		return checkcode;
	}
	
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public String getMailCheck() {
		return mailCheck;
	}

	public void setMailCheck(String mailCheck) {
		this.mailCheck = mailCheck;
	}
	
}
