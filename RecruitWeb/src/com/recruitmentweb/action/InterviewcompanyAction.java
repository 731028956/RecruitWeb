package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.model.CompanyanduserModel;

public class InterviewcompanyAction extends ActionSupport {
	private int jobid;
	private int userid;
	private String resumename;
	private Date interviewtime;
	private String interviewadress;
	
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getResumename() {
		return resumename;
	}
	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	public Date getInterviewtime() {
		return interviewtime;
	}
	public void setInterviewtime(Date interviewtime) {
		this.interviewtime = interviewtime;
	}
	public String getInterviewadress() {
		return interviewadress;
	}
	public void setInterviewadress(String interviewadress) {
		this.interviewadress = interviewadress;
	}
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		CompanyanduserModel cum=new CompanyanduserModel();
		cum.insertsendresumecompany(userid, jobid, resumename, interviewtime, interviewadress);
		return SUCCESS;
		
		
	}
}
