package com.recruitmentweb.action;

import java.text.ParseException;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.UserModel;

public class FirstresumeAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String sex;
	private String gzjy;
	private String hometown;
	private String adress;
	private String userphone;
	private Date birthday;
	private String useremail;
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
	public String getGzjy() {
		return gzjy;
	}
	public void setGzjy(String gzjy) {
		this.gzjy = gzjy;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String execute() throws Exception{
		ActionContext ac = ActionContext.getContext();
		Map<String, Object> session = ac.getSession();
		String userm=(String) session.get("useremail");
		UserModel um=new UserModel();
		User user1=(User) session.get("user");
		useremail=user1.getUseremail();
		User user=new User(username, birthday, sex, adress, userphone, hometown, gzjy,useremail);
		
		if(um.usermassage(user)){
			return SUCCESS;
		}else
		return ERROR;

	}

}
