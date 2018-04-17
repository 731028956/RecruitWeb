package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.model.CompanyModel;

public class SearchjobAction extends ActionSupport {
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Company cp=(Company) session.get("company");
		CompanyModel cm=new CompanyModel();
		ArrayList al=cm.searchjob(cp.getCompanyid());
		ac.put("job", al);
		return SUCCESS;
		
	}
}
