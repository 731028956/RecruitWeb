package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class Firstresume2Action extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private int gander;
	private String companyname;
	private String industry;
	private String position;
	private String zwlb;
	private Date s;
	private Date t;
	private String workdescribe;
	private String workplace;
	private String widcheck;
	private String ExpectIndustry;
	private String ExpectPosition;
	private String salary;
	private String educationbackground;
	private Date r;
	private Date e;
	private String schoolname;
	private String zhuanye;
	private String dgsj;
	private String workstate;
	
	public int getGander() {
		return gander;
	}
	public void setGander(int gander) {
		this.gander = gander;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getZwlb() {
		return zwlb;
	}
	public void setZwlb(String zwlb) {
		this.zwlb = zwlb;
	}
	public Date getS() {
		return s;
	}
	public void setS(Date s) {
		this.s = s;
	}
	public Date getT() {
		return t;
	}
	public void setT(Date t) {
		this.t = t;
	}
	public String getWorkdescribe() {
		return workdescribe;
	}
	public void setWorkdescribe(String workdescribe) {
		this.workdescribe = workdescribe;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getWidcheck() {
		return widcheck;
	}
	public void setWidcheck(String widcheck) {
		this.widcheck = widcheck;
	}
	public String getExpectIndustry() {
		return ExpectIndustry;
	}
	public void setExpectIndustry(String expectIndustry) {
		ExpectIndustry = expectIndustry;
	}
	public String getExpectPosition() {
		return ExpectPosition;
	}
	public void setExpectPosition(String expectPosition) {
		ExpectPosition = expectPosition;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getEducationbackground() {
		return educationbackground;
	}
	public void setEducationbackground(String educationbackground) {
		this.educationbackground = educationbackground;
	}
	public Date getR() {
		return r;
	}
	public void setR(Date r) {
		this.r = r;
	}
	public Date getE() {
		return e;
	}
	public void setE(Date e) {
		this.e = e;
	}
	public String getSchoolname() {
		return schoolname;
	}
	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	public String getDgsj() {
		return dgsj;
	}
	public void setDgsj(String dgsj) {
		this.dgsj = dgsj;
	}
	
	public String getWorkstate() {
		return workstate;
	}
	public void setWorkstate(String workstate) {
		this.workstate = workstate;
	}
	public String execute() throws Exception{
		ActionContext ac = ActionContext.getContext();
		Map<String, Object> session = ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		Resume rs=new Resume(userid, companyname, industry, position, zwlb, s, t, workdescribe, workplace, widcheck, ExpectIndustry, ExpectPosition, salary, educationbackground, r, e, schoolname, zhuanye,gander,dgsj,workstate);
		ResumeModel rm=new ResumeModel();
		rm.creatresume(rs);
		rm.creatjobintent(rs);
		rm.createducation(rs);
		rm.creatworkex(rs);		
			return SUCCESS;		
	}
	
}
