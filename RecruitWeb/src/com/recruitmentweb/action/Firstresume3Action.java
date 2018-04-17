package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.UserModel;

public class Firstresume3Action extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private int sex;
	private Date birthday;
	private String hometown;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String execute(){
		ActionContext ac = ActionContext.getContext();
		Map<String, Object> session = ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		UserModel um=new UserModel();
		user=um.selectuserinformation(user);
		session.put("user", user);
//		System.out.println(user1.getUserid());
//		System.out.println(user1.getUsername());
//		System.out.println(user.getUsername());
		if(user!=null){
			
			return SUCCESS;
		}else 
			return ERROR;	
	}
		

		
	
}
