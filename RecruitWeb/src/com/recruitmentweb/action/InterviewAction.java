package com.recruitmentweb.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.model.CompanyanduserModel;

public class InterviewAction extends ActionSupport{
	private int id;
	private String Interviewadress;
	private Date interviewtime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getInterviewadress() {
		return Interviewadress;
	}
	public void setInterviewadress(String interviewadress) {
		Interviewadress = interviewadress;
	}
	public Date getInterviewtime() {
		return interviewtime;
	}
	public void setInterviewtime(Date interviewtime) {
		this.interviewtime = interviewtime;
	}
	public String execute(){
		ActionContext ac= ActionContext.getContext();
		CompanyanduserModel cum=new CompanyanduserModel();
		cum.updateinterview(id, interviewtime, Interviewadress);
		return SUCCESS;

	}

}
