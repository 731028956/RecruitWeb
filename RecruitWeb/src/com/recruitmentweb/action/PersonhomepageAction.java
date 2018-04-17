package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.UserModel;

public class PersonhomepageAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String sex;
	private Date birthday;
	private String hometown;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
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
	public String execute() throws Exception{
		ActionContext context=ActionContext.getContext();
		Map<String, Object> session=context.getSession();
		User user1=(User) session.get("user");
		int userid=user1.getUserid();
		User user=new User(userid,username,sex,birthday,hometown);
		UserModel um=new UserModel();
		if(um.updatepersenpage(user)){
			session.put("user",user);
			return SUCCESS;
		}else

		return ERROR;		
	}
	
	
}
