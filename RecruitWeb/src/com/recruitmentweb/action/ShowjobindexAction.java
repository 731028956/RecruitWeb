package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.CompanyModel;

public class ShowjobindexAction extends ActionSupport{
	private int companyid;
	private int jobid;
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		CompanyModel cm=new CompanyModel(); 
		Job job=cm.searchjobinfo1(jobid);
		Company cp=cm.selectcompanyinfo(companyid);
		ac.put("job", job);	
		ac.put("company", cp);
		return SUCCESS;
	}
}
