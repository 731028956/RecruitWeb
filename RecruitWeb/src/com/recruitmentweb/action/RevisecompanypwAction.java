package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyModel;
import com.recruitmentweb.model.UserModel;

public class RevisecompanypwAction extends ActionSupport{
	private String oldpassword;
	private String newpassword;
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Company company=(Company) session.get("company");
		int companyid=company.getCompanyid();
		CompanyModel cm=new CompanyModel();
		if(cm.judgepassword(companyid, oldpassword)){
			cm.reviseuserpassword(companyid, newpassword);
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}
}
