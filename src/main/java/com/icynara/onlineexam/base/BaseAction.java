package com.icynara.onlineexam.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;


import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.dao.ExamPageDao;
import com.icynara.onlineexam.service.AdminUserService;
import com.icynara.onlineexam.service.ExamPageService;
import com.icynara.onlineexam.service.ExamQuestionService;
import com.icynara.onlineexam.service.StuClassService;
import com.icynara.onlineexam.service.StuScoreService;
import com.icynara.onlineexam.service.StudentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
	
	private static final long serialVersionUID = 1L;

	@Resource
	protected AdminUserService adminUserService;
	@Resource
	protected ExamPageService examPageService;
	@Resource
	protected StuClassService stuClassService;
	@Resource
	protected StudentService studentService;
	@Resource
	protected StuScoreService stuScoreService;
	@Resource
	protected ExamQuestionService examQuestionService;
	
	protected T model;
	
	//在构造方法中根据反射来得到放方法真正的类型
	public BaseAction() {
		try {
			ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) type.getActualTypeArguments()[0];
			model = clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}
	public T getModel() {
		return model;
	}
}
