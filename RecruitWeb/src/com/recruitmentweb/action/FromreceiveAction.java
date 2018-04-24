package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Pager;
import com.recruitmentweb.model.CompanyanduserModel;
import com.recruitmentweb.model.PagerModel;

public class FromreceiveAction extends ActionSupport{
	private int pageNow = 1 ; 
	private int pageSize = 15 ; 		
	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String execute(){
		ActionContext ac=ActionContext.getContext();
		int count=0;
		Map session=ac.getSession();
		Company company=(Company) session.get("company");
		System.out.println(company.getCompanyid());
		PagerModel pm=new PagerModel();
		count=pm.Fromreceive(company.getCompanyid());
		CompanyanduserModel cum=new CompanyanduserModel();
		ArrayList list=cum.searchformreceiveresume(company.getCompanyid(),pageSize,pageNow);	
		ac.put("Tuijian", list);
		Pager page = new Pager(pageNow, count); 
		session.put("pagefromreceive", page); 
		return SUCCESS;
	}
}
