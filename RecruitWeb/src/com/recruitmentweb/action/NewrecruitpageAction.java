package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class NewrecruitpageAction extends ActionSupport {
	private String resumename;

	public String getResumename() {
		return resumename;
	}

	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		System.out.println(resumename+"ppp");
		Resume rs=new Resume(userid, resumename);
		ResumeModel rm=new ResumeModel();
		if(rm.creatresume(rs)){
			rm.newcreatjobintent(rs);
		return SUCCESS;		
		}else{
			return ERROR;	
		}
	}

}
