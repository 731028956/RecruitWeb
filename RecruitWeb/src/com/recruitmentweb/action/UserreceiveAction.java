package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;

public class UserreceiveAction extends ActionSupport{
		public String execute(){
			ActionContext ac= ActionContext.getContext();
			Map session=ac.getSession();
			User user=(User) session.get("user");
			CompanyanduserModel cam=new CompanyanduserModel();
			ArrayList list=cam.searchuserresume(user.getUserid());
			ac.put("userjob", list);
			return SUCCESS;
			
		}
}
