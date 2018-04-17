package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.model.ResumeModel;

public class DeletresumeinfoAction extends ActionSupport{
	private int deid;
	private int dwid;
	
	public int getDeid() {
		return deid;
	}

	public void setDeid(int deid) {
		this.deid = deid;
	}

	public int getDwid() {
		return dwid;
	}

	public void setDwid(int dwid) {
		this.dwid = dwid;
	}

	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		ResumeModel rm=new ResumeModel();
		Resume rs= (Resume) session.get("resume");
		if(dwid!=0){
			rm.Deletex(dwid);
			rm.Updatedate(rs);
			
		}
		if(deid!=0){
			rm.Deleteb(deid);
			rm.Updatedate(rs);
		
		}
		return SUCCESS;

	}
}
