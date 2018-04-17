package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.model.CompanyModel;

public class SelectcompanyinfoAction extends ActionSupport{
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Company cp=(Company) session.get("company");
		CompanyModel cm=new CompanyModel();
		cm.selectcompanyinfo(cp);
		session.put("company",cp);
		return SUCCESS;
		
	}

}
