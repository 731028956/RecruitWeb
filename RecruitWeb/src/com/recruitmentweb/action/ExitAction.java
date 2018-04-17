package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExitAction extends ActionSupport{
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		session.clear();
		
		
		return SUCCESS;
	}
}
