package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.model.ResumeModel;

public class EditweAction extends ActionSupport{
	private String companyname;
	private String zwlb;
	private String position;
	private String industry;
	private Date s;
	private Date t;
	private String workdescribe;
	private int wid;
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getZwlb() {
		return zwlb;
	}
	public void setZwlb(String zwlb) {
		this.zwlb = zwlb;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
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
	
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Resume rs=(Resume) session.get("resume");
		int userid=rs.getUserid();
		String resumename=rs.getResumename();
		System.out.println(resumename+"diwe");
		Resume resume=new Resume(wid, userid, companyname, industry, position, zwlb, s, t, workdescribe, resumename);
		ResumeModel rm=new ResumeModel();
		System.out.println(wid+"id");
		if(wid==0){
			rm.Updatedate(rs);
			rm.creatworkex(resume);
		}else{
		rm.Updatedate(rs);
		rm.Updatewe(resume);
		}
		return SUCCESS;
	}
}
