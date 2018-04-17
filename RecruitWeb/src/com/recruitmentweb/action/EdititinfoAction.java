package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class EdititinfoAction extends ActionSupport{
	private String salary;
	private String workplace;
	private String ExpectPosition;
	private String ExpectIndustry;
	private String selfdescribe;
	private String dgsj;
	private String widcheck;
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getExpectPosition() {
		return ExpectPosition;
	}
	public void setExpectPosition(String expectPosition) {
		ExpectPosition = expectPosition;
	}
	public String getExpectIndustry() {
		return ExpectIndustry;
	}
	public void setExpectIndustry(String expectIndustry) {
		ExpectIndustry = expectIndustry;
	}
	public String getSelfdescribe() {
		return selfdescribe;
	}
	public void setSelfdescribe(String selfdescribe) {
		this.selfdescribe = selfdescribe;
	}
	public String getDgsj() {
		return dgsj;
	}
	public void setDgsj(String dgsj) {
		this.dgsj = dgsj;
	}
	public String getWidcheck() {
		return widcheck;
	}
	public void setWidcheck(String widcheck) {
		this.widcheck = widcheck;
	}
	
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Resume rs=(Resume) session.get("resume");
		User user1= (User) session.get("user");
		int userid=user1.getUserid();
		String resumename=rs.getResumename();
		ResumeModel rm=new ResumeModel();
		rm.Updateit(salary, workplace, ExpectPosition, ExpectIndustry, selfdescribe, dgsj, widcheck, resumename, userid);
		rm.Updatedate(rs);
		return SUCCESS;	
	}
}
