package com.recruitmentweb.javabean;

import java.util.Date;

public class Cau {
	private int id;
	private int resumeid;
	private int jobid;
	private int userid;
	private Date updatetime;
	private String 	companyposition;
	private String workadress;
	private String salary;
	private String companyname;
	private String resumename;
	private String state;
	private Date interviewtime;
	private User user;
	private Resume resume;
	private String interviewadress;
	private int companyid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getResumeid() {
		return resumeid;
	}
	public void setResumeid(int resumeid) {
		this.resumeid = resumeid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getCompanyposition() {
		return companyposition;
	}
	public void setCompanyposition(String companyposition) {
		this.companyposition = companyposition;
	}
	public String getWorkadress() {
		return workadress;
	}
	public void setWorkadress(String workadress) {
		this.workadress = workadress;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getResumename() {
		return resumename;
	}
	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getInterviewtime() {
		return interviewtime;
	}
	public void setInterviewtime(Date interviewtime) {
		this.interviewtime = interviewtime;
	}
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Cau() {
		super();
	}
	public String getInterviewadress() {
		return interviewadress;
	}
	public void setInterviewadress(String interviewadress) {
		this.interviewadress = interviewadress;
	}
	public Resume getResume() {
		return resume;
	}
	public void setResume(Resume resume) {
		this.resume = resume;
	}
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	
}
