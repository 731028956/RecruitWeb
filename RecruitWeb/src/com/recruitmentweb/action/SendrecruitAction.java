package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;

public class SendrecruitAction extends ActionSupport{
	private int resumeid;
	private int jobid;
	public int getResumeid() {
		return resumeid;
	}
	public void setResumeid(int resumeid) {
		this.resumeid = resumeid;
	}
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		User user=(User) session.get("user");
		CompanyanduserModel cum=new CompanyanduserModel();
		if(!cum.judgesevenday(jobid, user.getUserid())){
			System.out.println("ERROR+2");
			return ERROR;
		}else{
		cum.insertsendresume_table(resumeid, jobid);
		System.out.println("ERROR+1");
		return SUCCESS;
		}
		
	}
}
