package com.icynara.onlineexam.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icynara.onlineexam.base.BaseAction;
import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.beans.ExamPage;
import com.icynara.onlineexam.beans.Student;
import com.opensymphony.xwork2.ActionContext;
@Controller
@Scope("prototype")
public class ExamPageAction extends BaseAction<ExamPage>{
	
	private static final long serialVersionUID = 1L;
	private String overdueDay ;
	
	public String exam() throws Exception {
		Student s = (Student) ActionContext.getContext().getSession().get("studentUser");
		if(s!=null){
			ExamPage ep = examPageService.findById(model.getId());
			ActionContext.getContext().getValueStack().push(ep);
			String totalScore = examQuestionService.findTotalScoreByid(model.getId());
			ActionContext.getContext().put("total",totalScore);
			return "exam";
		}
		ActionContext.getContext().put("message", "请先登录！");
		return "login";
	}
	
	public String delete() throws Exception {
		ExamPage ep = examPageService.findById(model.getId());
		if(ep != null){
			examPageService.delete(model.getId());
			return listAll();
		}
		return ERROR;
	}
	
	public String addOrUpdate() throws Exception {
		ExamPage ep = examPageService.findById(model.getId());
		if(ep != null){
			ep.setExamContext(model.getExamContext());
			ep.setExamDesc(model.getExamDesc());
			ep.setExamResult(model.getExamResult());
			ep.setExamTime(model.getExamTime());
			ep.setExamTitle(model.getExamTitle());
			ep.setOverdueTime(getDate(overdueDay));
			examPageService.update(ep);
		}else{
			ep = new ExamPage();
			ep.setExamContext(model.getExamContext());
			ep.setExamDesc(model.getExamDesc());
			ep.setExamResult(model.getExamResult());
			ep.setExamTime(model.getExamTime());
			ep.setExamTitle(model.getExamTitle());
			ep.setAdminUser((AdminUser)ActionContext.getContext().getSession().get("adminUser"));
			ep.setCreateTime(new Date());
			ep.setOverdueTime(getDate(overdueDay));
			examPageService.add(ep);
			
		}
		return listAll();
	}
	
	public String addUI() throws Exception {
		return "addUI";
	}
	
	public String updateUI() throws Exception {
		ExamPage ex = examPageService.findById(model.getId());
		ActionContext.getContext(). getValueStack().push(ex);
		return "updateUI";
	}
	
	public String listAll() throws Exception {
		List<ExamPage> eps = examPageService.findAll();
		ActionContext.getContext().put("epList", eps);
		return "listAll";
	}
	public Date getDate(String str) throws Exception{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str);
	}

	public String getOverdueDay() {
		return overdueDay;
	}

	public void setOverdueDay(String overdueDay) {
		this.overdueDay = overdueDay;
	}
	
}
