package com.icynara.onlineexam.action;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icynara.onlineexam.base.BaseAction;
import com.icynara.onlineexam.beans.AdminUser;
import com.icynara.onlineexam.beans.StuClass;
import com.icynara.onlineexam.beans.Student;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class StuClassAction extends BaseAction<StuClass>{
	private static final long serialVersionUID = 1L;
	private String auId;

	
	public String addUI() throws Exception {
		List<AdminUser> aus = adminUserService.findAll();
		aus.remove(0);
		ActionContext.getContext().put("aus", aus);
		return "addUI";
	}
	
	public String delete() throws Exception {
		 StuClass sc = stuClassService.findById(model.getId());
		 if(sc != null){
			 stuClassService.delete(model.getId());
			 return listAll();
		 }
		 return ERROR;
	}
	
	public String update() throws Exception {
		StuClass sc = stuClassService.findById(model.getId());
		if(sc!=null){
			sc.setCalssNum(model.getCalssNum());
			sc.setClassName(model.getClassName());
			sc.setClassState(model.getClassState());
			sc.setAdminUser(adminUserService.findById(Integer.parseInt(auId)));
			stuClassService.update(sc);
		}else{
			sc = new StuClass();
			sc.setAdminUser(adminUserService.findById(Integer.parseInt(auId)));
			sc.setCalssNum(model.getCalssNum());
			sc.setClassName(model.getClassName());
			sc.setClassState(model.getClassState());
			sc.setCreateTime(new Date());
			stuClassService.add(sc);
		}
		
		return listAll();
	}
	
	public String updateUI() throws Exception {
		StuClass sc = stuClassService.findById(model.getId());
		List<AdminUser> aus = adminUserService.findAll();
		aus.remove(0);
		if(sc!=null){
			ActionContext.getContext().getValueStack().push(sc);
			ActionContext.getContext().put("aus", aus);
			return "updateUI";
		}
		return ERROR;
	}
	
	public String listAll() throws Exception {
		List<StuClass> scs = stuClassService.findAll();
		Set<Student> sset = scs.get(0).getStus();
		sset.size();
		ActionContext.getContext().put("scsList", scs);
		return "listAll";
	}

	public String getAuId() {
		return auId;
	}

	public void setAuId(String auId) {
		this.auId = auId;
	}
	
}
