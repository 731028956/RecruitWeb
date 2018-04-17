package com.recruitmentweb.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.model.CompanyModel;

public class DeletepositionAction extends ActionSupport{
	private int deleteuserid;
	public int getDeleteuserid() {
		return deleteuserid;
	}
	public void setDeleteuserid(int deleteuserid) {
		this.deleteuserid = deleteuserid;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		CompanyModel cm=new CompanyModel();
		cm.deletecompanyposition(deleteuserid);	
		return SUCCESS;
		
	}

}
