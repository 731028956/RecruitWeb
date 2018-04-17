package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;

public class ReceiveAction extends ActionSupport{
	public String execute(){
		ActionContext ac= ActionContext.getContext();
		Map session=ac.getSession();
		Company cp= (Company) session.get("company");
		CompanyanduserModel cam=new CompanyanduserModel();
		ArrayList list=cam.searchreceiveresume(cp.getCompanyid());
		ac.put("Receiveresume", list);
		return SUCCESS;
		
		
	}
}
