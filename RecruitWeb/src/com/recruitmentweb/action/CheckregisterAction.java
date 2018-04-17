package com.recruitmentweb.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.model.CompanyModel;
import com.recruitmentweb.model.UserModel;

public class CheckregisterAction extends ActionSupport{
	private String useremail;
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		UserModel um=new UserModel();
		CompanyModel cm= new CompanyModel();
		
			if(um.checkregister(useremail)){
				
				return SUCCESS;
			}else{
				
				return ERROR;
			}
		}
		
		
		
		
	
}
