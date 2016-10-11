package com.icynara.onlineexam.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.icynara.onlineexam.base.BaseAction;
import com.icynara.onlineexam.beans.ExamQuestion;
import com.icynara.onlineexam.beans.StuScore;
import com.icynara.onlineexam.beans.Student;
import com.icynara.onlineexam.service.ExamPageService;
import com.icynara.onlineexam.service.ExamQuestionService;
import com.icynara.onlineexam.service.StuScoreService;
import com.icynara.onlineexam.utils.GetExamScore;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ExamScoreAction extends ActionSupport {
	
	@Resource
	private ExamQuestionService examQuestionService;
	@Resource
	private ExamPageService examPageService;
	@Resource
	private StuScoreService stuScoreService;
	
	private Integer epId;
	private static final long serialVersionUID = 1L;

	public String saveScore() throws Exception {
		List<ExamQuestion> eqList = examQuestionService.findByEpID(epId);
		Map<String, Object> map = ActionContext.getContext().getParameters();
		List<String> resList = new ArrayList<String>();
		if(eqList.size()+1==map.size()){
			long res = GetExamScore.getScore(eqList, resList,map);
			StuScore ss = new StuScore();
			ss.setExamPage(examPageService.findById(epId));
			Student s = (Student) ActionContext.getContext().getSession().get("studentUser");
			ss.setStudent(s);
			ss.setSocre(res);
			System.out.println(GetExamScore.getResultString(resList.toString()));
			ss.setStuResult(GetExamScore.getResultString(resList.toString()));
			stuScoreService.add(ss);
			ActionContext.getContext().put("message", "得分："+res);
			return "examInfo";
		}else{
			ActionContext.getContext().put("message", "请回答所有题目！");
			return "examInfo";
		}
	}

	public Integer getEpId() {
		return epId;
	}

	public void setEpId(Integer epId) {
		this.epId = epId;
	}
	
}
