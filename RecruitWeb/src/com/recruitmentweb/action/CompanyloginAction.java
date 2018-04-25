package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.model.CompanyModel;



public class CompanyloginAction extends ActionSupport {
	private String companymail;
	private String password;
	public String getCompanymail() {
		return companymail;
	}
	public void setCompanymail(String companymail) {
		this.companymail = companymail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		session.clear();
		Company cp=new Company(companymail, password);
		CompanyModel cm=new CompanyModel();
		cp=cm.login(cp);
//		cm.selectcompanyinfo(cp);
		
		if(cp!=null){
			if(cp.getCompanyphone()==null){
				session.put("company",cp);
				return "cregister";
			}
			session.put("company",cp);
			return SUCCESS;
		}else {
			
			return ERROR;	
		}
	

	}
}
