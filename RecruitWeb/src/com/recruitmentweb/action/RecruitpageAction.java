package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class RecruitpageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String execute(){
		ResumeModel rm=new ResumeModel();
		ActionContext context=ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		User user=(User) session.get("user");
		if(user==null){
			return ERROR;
		}
		int userid=user.getUserid();
		ArrayList<Resume> resume=rm.selectrename(userid);
		context.put("resume", resume);
		if(resume!=null){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}

}
