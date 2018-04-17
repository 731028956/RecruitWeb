package com.recruitmentweb.javabean;

import java.util.Date;

public class User {
	private int userid;
	private String username;
	private int age;
	private Date birthday;
	private String sex;
	private String adress;
	private String userphone;
	private String hometown;
	private String gzjy;
	
	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getHometown() {
		return hometown;
	}



	public void setHometown(String hometown) {
		this.hometown = hometown;
	}



	public String getGzjy() {
		return gzjy;
	}



	public void setGzjy(String gzjy) {
		this.gzjy = gzjy;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public Date getBirthday() {
		return birthday;
	}



	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}



	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
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







	private String password;
	private String useremail;
	
	
	
	public int getUserid() {
		return userid;
	}



	public void setUserid(int userid) {
		this.userid = userid;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getUseremail() {
		return useremail;
	}



	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}



	public User(String useremail, String password) {
		super();
		this.useremail = useremail;
		this.password = password;
	}



	public User(String username, Date birthday, String sex, String adress, String userphone, String hometown, String gzjy,String useremail) {
		super();
		this.username = username;
		this.birthday = birthday;
		this.sex = sex;
		this.adress = adress;
		this.userphone = userphone;
		this.hometown = hometown;
		this.gzjy = gzjy;
		this.useremail=useremail;
	}



	public User(int userid, String username, String sex, Date birthday, String hometown) {
		super();
		this.userid = userid;
		this.username = username;
		this.birthday = birthday;
		this.sex = sex;
		this.hometown = hometown;
	}



	public User(int userid) {
		super();
		this.userid = userid;
	}



	public User() {
		super();
	}
	

}
