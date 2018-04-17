package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.CompanyModel;

public class UpdatejobAction extends ActionSupport{
	private String companyposition;
	private String jobpeople;
	private String workadress;
	private String gzjy;
	private String occupatroninfo;
	private String recruitmentrequirement;
	private String other;
	private String salary;
	private String linkadress;
	private String educationbackground;
	public String getCompanyposition() {
		return companyposition;
	}
	public void setCompanyposition(String companyposition) {
		this.companyposition = companyposition;
	}
	public String getJobpeople() {
		return jobpeople;
	}
	public void setJobpeople(String jobpeople) {
		this.jobpeople = jobpeople;
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
	
	public String getLinkadress() {
		return linkadress;
	}
	public void setLinkadress(String linkadress) {
		this.linkadress = linkadress;
	}
	
	public String getEducationbackground() {
		return educationbackground;
	}
	public void setEducationbackground(String educationbackground) {
		this.educationbackground = educationbackground;
	}
	public String execute() throws Exception {
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Job j=(Job) session.get("job");

		Job job=new Job(j.getId(),j.getCompanyid(),companyposition,jobpeople, workadress, gzjy, occupatroninfo, recruitmentrequirement, other,salary,linkadress,educationbackground);
		CompanyModel cm=new CompanyModel();
		cm.updatejob(job);
		return SUCCESS;
		
	}
}
