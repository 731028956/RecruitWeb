package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.model.ResumeModel;

public class EditedubgAction extends ActionSupport{
	private int eid;
	private String schoolname;
	private Date r;
	private Date e;
	private String educationbackground;
	private String zhuanye;
	
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getSchoolname() {
		return schoolname;
	}
	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
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
	public String getEducationbackground() {
		return educationbackground;
	}
	public void setEducationbackground(String educationbackground) {
		this.educationbackground = educationbackground;
	}
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Resume rs=(Resume) session.get("resume");
		int userid=rs.getUserid();
		String resumename=rs.getResumename();
		Resume resume=new Resume(educationbackground, r, e, schoolname, zhuanye,eid,userid,resumename);
		ResumeModel rm=new ResumeModel();
		if(eid==0){
			rm.Updatedate(rs);
			rm.createducation(resume);
		}
		rm.Updatedate(rs);
		rm.Updateedugb(resume);
		return SUCCESS;
		
	}
}
