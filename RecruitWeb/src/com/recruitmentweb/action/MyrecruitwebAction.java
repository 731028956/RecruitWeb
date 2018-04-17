package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;

public class MyrecruitwebAction extends ActionSupport{
	private String resumename;

	public String getResumename() {
		return resumename;
	}

	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	public String execute(){
		ActionContext ac= ActionContext.getContext();
		Map<String, Object> session=ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		Resume rs=new Resume(userid,resumename);
		session.put("resume", rs);
		return SUCCESS;
		
		
	}

}
