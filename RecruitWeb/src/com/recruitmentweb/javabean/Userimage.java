package com.recruitmentweb.javabean;

public class Userimage {
	private int id;
	private int userid;
	private String imagepath;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public Userimage(int userid, String imagepath) {
		super();
		this.userid = userid;
		this.imagepath = imagepath;
	}
	public Userimage(int userid) {
		super();
		this.userid = userid;
	}
	
}
