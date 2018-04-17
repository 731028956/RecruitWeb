package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class UpdateresumeAction extends ActionSupport {
	private String resumename;

	public String getResumename() {
		return resumename;
	}

	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		User user=(User) session.get("user");
		Resume rs1=(Resume) session.get("resume");
		String oldname=rs1.getResumename();
		int userid=user.getUserid();
		Resume rs=new Resume(userid,resumename,oldname);
		ResumeModel rm=new ResumeModel();
		rm.Updatersumename(rs);
		rm.Updatersumenamee(rs);
		rm.Updatersumenamew(rs);
		rm.Updatersumenamej(rs);
		rm.Updatedate(rs);
		session.put("resume", rs);
		return SUCCESS;
	}
}
