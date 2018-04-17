package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.javabean.Userimage;
import com.recruitmentweb.model.UserModel;

public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String useremail;
	private String password;
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		session.clear();
		UserModel um=new UserModel();
		User user=new User(useremail, password);
		user=um.login(user);
		Userimage ui=new Userimage(user.getUserid());	
		ui=um.searchimage(ui);
		if(ui!=null){
		String result=ui.getImagepath()+".jpg";
		session.put("image", result);
		}
		session.put("user", user);
		
		if(user!=null){
			return SUCCESS;
		}else 
			return ERROR;	
	}
	
	
}
