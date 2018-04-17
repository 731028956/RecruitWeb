package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.model.CompanyanduserModel;

public class FromreceiveAction extends ActionSupport{
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Company company=(Company) session.get("company");
		System.out.println(company.getCompanyid());
		CompanyanduserModel cum=new CompanyanduserModel();
		ArrayList list=cum.searchformreceiveresume(company.getCompanyid());	
		ac.put("Tuijian", list);
		return SUCCESS;
	}
}
