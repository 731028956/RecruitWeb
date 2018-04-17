package com.recruitmentweb.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.model.CompanyanduserModel;

public class RefusejobAction extends ActionSupport{
	private int pid;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		CompanyanduserModel cam=new CompanyanduserModel();
		cam.updatestate3(pid);
		return SUCCESS;

	}
}
