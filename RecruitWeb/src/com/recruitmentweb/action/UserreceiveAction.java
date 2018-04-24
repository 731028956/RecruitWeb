package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Pager;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;
import com.recruitmentweb.model.PagerModel;

public class UserreceiveAction extends ActionSupport{
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
			ActionContext ac= ActionContext.getContext();
			int count=0;
			Map session=ac.getSession();
			User user=(User) session.get("user");
			CompanyanduserModel cam=new CompanyanduserModel();
			PagerModel pm=new PagerModel();
			count=pm.Userreceive(user.getUserid());
			ArrayList list=cam.searchuserresume(user.getUserid(),pageSize,pageNow);
			ac.put("userjob", list);
			Pager page = new Pager(pageNow, count); 
			session.put("pageuserreceive", page); 
			return SUCCESS;
			
		}
}
