package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.UserModel;

public class ReviswpasswordAction extends ActionSupport{
	private String oldpassword;
	private String newpassword;
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		UserModel um=new UserModel();
		if(um.judgepassword(userid, oldpassword)){
			um.reviseuserpassword(userid, newpassword);
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

}
