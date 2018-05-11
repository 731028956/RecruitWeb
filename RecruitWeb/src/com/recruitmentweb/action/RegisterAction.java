package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.UserModel;

public class RegisterAction extends ActionSupport{
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
		ActionContext ac = ActionContext.getContext();
		Map<String, Object> session = ac.getSession();
		session.clear();
		UserModel um=new UserModel();
		User user=new User(useremail, password);
		
		if(um.register(user)){		
			session.put("user", user);
			ac.put("user", user);
			return SUCCESS;
		}else
			
		return ERROR;
		
		
		

	}
	
}
