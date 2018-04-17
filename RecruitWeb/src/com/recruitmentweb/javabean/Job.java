package com.recruitmentweb.javabean;

import java.util.Date;

public class Job {
	private int id;
	private int companyid;
	private String companyposition;
	private String companyname;
	private String jobpeople;
	private Date companystart;
	private Date companyend;
	private String workadress;
	private String gzjy;
	private String occupatroninfo;
	private String recruitmentrequirement;
	private String other;
	private Date updatetime;
	private int state;
	private String salary;
	private String linkadress;
	private String profile;
	private String educationbackground;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyposition() {
		return companyposition;
	}
	public void setCompanyposition(String companyposition) {
		this.companyposition = companyposition;
	}
	public String getJobpeople() {
		return jobpeople;
	}
	
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public void setJobpeople(String jobpeople) {
		this.jobpeople = jobpeople;
	}
	public Date getCompanystart() {
		return companystart;
	}
	public void setCompanystart(Date companystart) {
		this.companystart = companystart;
	}
	public Date getCompanyend() {
		return companyend;
	}
	public void setCompanyend(Date companyend) {
		this.companyend = companyend;
	}
	
	public String getWorkadress() {
		return workadress;
	}
	public void setWorkadress(String workadress) {
		this.workadress = workadress;
	}
	public String getGzjy() {
		return gzjy;
	}
	public void setGzjy(String gzjy) {
		this.gzjy = gzjy;
	}
	public String getOccupatroninfo() {
		return occupatroninfo;
	}
	public void setOccupatroninfo(String occupatroninfo) {
		this.occupatroninfo = occupatroninfo;
	}
	public String getRecruitmentrequirement() {
		return recruitmentrequirement;
	}
	public void setRecruitmentrequirement(String recruitmentrequirement) {
		this.recruitmentrequirement = recruitmentrequirement;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
	public String getLinkadress() {
		return linkadress;
	}
	public void setLinkadress(String linkadress) {
		this.linkadress = linkadress;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getEducationbackground() {
		return educationbackground;
	}
	public void setEducationbackground(String educationbackground) {
		this.educationbackground = educationbackground;
	}
	public Job(int id,int companyid, String companyposition, String jobpeople,String workadress, String gzjy, String occupatroninfo, String recruitmentrequirement, String other,String salary,String linkadress,String educationbackground) {
		super();
		this.id=id;
		this.companyid = companyid;
		this.companyposition = companyposition;
		this.jobpeople = jobpeople;
		this.companystart = companystart;
		this.companyend = companyend;
		this.workadress = workadress;
		this.gzjy = gzjy;
		this.occupatroninfo = occupatroninfo;
		this.recruitmentrequirement = recruitmentrequirement;
		this.other = other;
		this.salary=salary;
		this.linkadress=linkadress;
		this.educationbackground=educationbackground;
	}
	public Job() {
		super();
	}
	public Job(int companyid, String companyposition, String jobpeople, String workadress, String gzjy, String occupatroninfo, String recruitmentrequirement, String other,String salary,String linkadress,String educationbackground) {
		super();
		this.companyid = companyid;
		this.companyposition = companyposition;
		this.jobpeople = jobpeople;
		this.workadress = workadress;
		this.gzjy = gzjy;
		this.occupatroninfo = occupatroninfo;
		this.recruitmentrequirement = recruitmentrequirement;
		this.other = other;
		this.salary=salary;
		this.linkadress=linkadress;
		this.educationbackground=educationbackground;
	}
	
	
}
