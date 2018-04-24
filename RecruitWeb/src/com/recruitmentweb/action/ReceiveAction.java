package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Pager;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;
import com.recruitmentweb.model.PagerModel;

public class ReceiveAction extends ActionSupport{
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
		int count=0;
		ActionContext ac= ActionContext.getContext();
		Map session=ac.getSession();
		Company cp= (Company) session.get("company");
		CompanyanduserModel cam=new CompanyanduserModel();
		PagerModel pm=new PagerModel();
		count=pm.receive(cp.getCompanyid());
		ArrayList list=cam.searchreceiveresume(cp.getCompanyid(),pageSize,pageNow);
		ac.put("Receiveresume", list);
		Pager page = new Pager(pageNow, count); 
		session.put("pagereceive", page); 
		return SUCCESS;
		
		
	}
}
