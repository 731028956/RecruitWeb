package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Pager;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;
import com.recruitmentweb.model.PagerModel;

public class SendinfoAction extends ActionSupport{
	private int pageNow = 1 ; 
	private int pageSize = 2 ; 		
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
		User user=(User) session.get("user");
		PagerModel pm=new PagerModel();
		CompanyanduserModel cam=new CompanyanduserModel();
		ArrayList list=cam.searchsendresume(user.getUserid(),pageSize,pageNow);
		count=pm.sendinfo(user.getUserid());
		ac.put("sendresume", list);
		Pager page = new Pager(pageNow, count); 
		session.put("pagesendinfo", page); 
		return SUCCESS;
		
		
	}

}
