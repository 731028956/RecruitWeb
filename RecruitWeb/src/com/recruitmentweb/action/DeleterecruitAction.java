package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.model.ResumeModel;

public class DeleterecruitAction extends ActionSupport{
	private String deleteresumename;
	private int deleteuserid;
	
	public String getDeleteresumename() {
		return deleteresumename;
	}

	public void setDeleteresumename(String deleteresumename) {
		this.deleteresumename = deleteresumename;
	}

	public int getDeleteuserid() {
		return deleteuserid;
	}

	public void setDeleteuserid(int deleteuserid) {
		this.deleteuserid = deleteuserid;
	}

	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		ResumeModel rm=new ResumeModel();
		Resume rs=new Resume(deleteuserid,deleteresumename);
		rm.Deleteresume(rs);
		session.put("resume", rs);
		return SUCCESS;
	}
}
