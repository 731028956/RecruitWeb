package com.recruitmentweb.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.model.CompanyModel;
import com.recruitmentweb.model.UserModel;

public class CheckcompanymailAction extends ActionSupport {
	private String companymail;

	public String getCompanymail() {
		return companymail;
	}

	public void setCompanymail(String companymail) {
		this.companymail = companymail;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		CompanyModel cm= new CompanyModel();
		
			if(cm.checkregister(companymail)){
				
				return SUCCESS;
			}else{
				
				return ERROR;
			}
		}
}
