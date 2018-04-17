package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class JudgerecruitnumberAction extends ActionSupport{
	public String addType(){
		ActionContext ac= ActionContext.getContext();
		Map session=ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		ResumeModel rm=new ResumeModel();
		ArrayList<Resume> resume=rm.selectrename(userid);
		if(resume.size()<=3){
		return SUCCESS;
		}
		else{
			return ERROR;
			
		}
		
	}
}
