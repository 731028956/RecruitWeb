package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class JudgeresumenameAction extends ActionSupport{
	private String editresume;

	public String getEditresume() {
		return editresume;
	}

	public void setEditresume(String editresume) {
		this.editresume = editresume;
	}
	public String addType(){
		ActionContext ac= ActionContext.getContext();
		Map session=ac.getSession();
		ResumeModel rm=new ResumeModel();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		Resume resume=new Resume(userid,editresume);
		resume=rm.searchresumetableinformation(resume);
		if(resume!=null){
			return ERROR;
		}else{
			return SUCCESS;
		}
	
		
	}
}
