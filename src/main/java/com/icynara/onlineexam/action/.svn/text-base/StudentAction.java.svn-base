package com.icynara.onlineexam.action;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icynara.onlineexam.base.BaseAction;
import com.icynara.onlineexam.beans.ExamPage;
import com.icynara.onlineexam.beans.StuClass;
import com.icynara.onlineexam.beans.StuScore;
import com.icynara.onlineexam.beans.Student;
import com.icynara.onlineexam.utils.MD5EncodingUtil;
import com.opensymphony.xwork2.ActionContext;
/**
 * @ClassName:StudentAction.java
 * @Description:TODO(等我喝醉了再来修复。) 
 * @author:remix
 * @version:V1.0  
 * @Date:2016年9月3日 下午5:29:10
 */
@Controller
@Scope("prototype")
public class StudentAction extends BaseAction<Student>{
	
	private static final long serialVersionUID = 1L;
	private String classId;
	//验证码
	private String checkcode;
	
	public String listStuScore() throws Exception {
		Student s = (Student) ActionContext.getContext().getSession().get("studentUser");
		List<StuScore> ssList = stuScoreService.findBySutId(s.getId());
		ActionContext.getContext().put("ssList", ssList);
		return "listStuScore";
	}
	
	
	public String listExamPage() throws Exception {
		Student s = (Student) ActionContext.getContext().getSession().get("studentUser");
		s = studentService.findById(s.getId());
		int auID = s.getStuClass().getAdminUser().getId();
		List<ExamPage> eps = examPageService.findByAUID(auID);
		ActionContext.getContext().put("epList", eps);
		return "listExamPage";
	}
	
	public String logOut() throws Exception {
		ActionContext.getContext().getSession().remove("studentUser");
		return SUCCESS;
	}
	
	public String login() throws Exception {
		String imageCode = (String) ActionContext.getContext().getSession().get("imageChack");
		if(imageCode.equals(checkcode)){
			Student s = studentService.findByUSernameAndPassword(model.getUsername(),model.getPassword());
			if(s!=null&&s.getStuState()==1){
				ActionContext.getContext().getSession().put("studentUser", s);
				return "loginSuccess";
			}else{
				ActionContext.getContext().put("message", "用户名或密码错误！");
				return ERROR;
			}
		}else{
			ActionContext.getContext().put("message", "验证码错误！");
			return ERROR;
		}
		
	}
	
	public String register() throws Exception {
		String imageCode = (String) ActionContext.getContext().getSession().get("imageChack");
		Student s = studentService.findByPhone(model.getPhone());
		Student s1 = studentService.findByUserName(model.getUsername());
		if(imageCode.equals(checkcode)){
			if(s!=null){
				ActionContext.getContext().put("message", "手机号重复注册！");
				return registerUI();
			}else if(s1!=null){
				ActionContext.getContext().put("message", "登录名重复！");
				return registerUI();
			}else{
				s = new Student();
				s.setAge(model.getAge());
				s.setName(model.getName());
				s.setPassword(MD5EncodingUtil.getMD5(model.getPassword()));
				s.setPhone(model.getPhone());
				s.setRegisterTime(new Date());
				s.setStuClass(stuClassService.findById(Integer.parseInt(classId)));
				s.setStuNum(model.getStuNum());
				s.setStuState(2);
				s.setUsername(model.getUsername());
				ActionContext.getContext().put("message", "注册成功，等待管理员审核！");
				studentService.add(s);
				return SUCCESS;
			}
		}else{
			ActionContext.getContext().put("message", "验证码错误！");
			return registerUI();
		}
		
	}
	
	public String registerUI() throws Exception {
		List<StuClass> scs = stuClassService.findAll();
		ActionContext.getContext().put("scs", scs);
		return "registerUI";
	}
	/**
	 * 
	 * @Title:        listAll 
	 * @Description:  TODO(返回所有的学生) 
	 * @throws 		  Exception    
	 * @return:       String listAll 返回所有学生的界面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:24:37
	 */
	public String listAll() throws Exception {
		List<Student> sList = studentService.findAll();
		ActionContext.getContext().put("sList", sList);
		return "listAll";
	}
	/**
	 * @Title:        addUI 
	 * @Description:  TODO(添加用户准备数据) 
	 * @throws 		  Exception    
	 * @return:       String    addUI 跳转到添加页面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:25:22
	 */
	public String addUI() throws Exception {
		List<StuClass> scs = stuClassService.findAll();
		ActionContext.getContext().put("scs", scs);
		return "addUI";
	}
	/**
	 * @Title:        add 
	 * @Description:  TODO(处理添加用户的逻辑) 
	 * @throws 		  Exception    
	 * @return:       String    listAll 添加完成转到所有用户列表界面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:26:13
	 */
	public String add() throws Exception {
		if(model.getId()!=null){
			Student s = studentService.findById(model.getId());
			s.setAge(model.getAge());
			s.setName(model.getName());
			s.setPassword(MD5EncodingUtil.getMD5(model.getPassword()));
			s.setPhone(model.getPhone());
			s.setStuClass(stuClassService.findById(Integer.parseInt(classId)));
			s.setStuNum(model.getStuNum());
			s.setStuState(model.getStuState());
			s.setUsername(model.getUsername());
			studentService.update(s);
		}else{
			Student s = new Student();
			s.setAge(model.getAge());
			s.setName(model.getName());
			s.setPassword(MD5EncodingUtil.getMD5(model.getPassword()));
			s.setPhone(model.getPhone());
			s.setRegisterTime(new Date());
			s.setStuClass(stuClassService.findById(Integer.parseInt(classId)));
			s.setStuNum(model.getStuNum());
			s.setStuState(model.getStuState());
			s.setUsername(model.getUsername());
			studentService.add(s);
		}
		return listAll();
		
	}
	/**
	 * @Title:        updateUI 
	 * @Description:  TODO(更新用户准备数据) 
	 * @throws  	  Exception    
	 * @return:       String    updateUI 更新用户界面
	 * @author        remix
	 * @Date          2016年9月3日 下午5:27:07
	 */
	public String updateUI() throws Exception {
		List<StuClass> scs = stuClassService.findAll();
		ActionContext.getContext().put("scs", scs);
		Student student = studentService.findById(model.getId());
		ActionContext.getContext().getValueStack().push(student);
		return "updateUI";
	}
	/**
	 * @Title:        delete 
	 * @Description:  TODO(根据id删除用户) 
	 * @throws 		  Exception    
	 * @return:       String    listAll 显示所有用户
	 * @author        remix
	 * @Date          2016年9月3日 下午5:27:44
	 */
	public String delete() throws Exception {
		studentService.delete(model.getId());
		return listAll();
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	
}
