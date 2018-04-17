package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.CompanyModel;

public class OtherpositionAction extends ActionSupport{
	private int companyid;

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		CompanyModel cm=new  CompanyModel();
		System.out.println();
		Company cp=cm.selectcompanyinfo(companyid);
		ArrayList Job=cm.searchjobinfo(companyid);
		ac.put("searchresult", Job);	
		ac.put("company", cp);
		return SUCCESS;
		
		
	}
}
