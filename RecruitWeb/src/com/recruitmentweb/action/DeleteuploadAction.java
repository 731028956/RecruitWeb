package com.recruitmentweb.action;

import java.io.File;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.model.ResumeModel;

public class DeleteuploadAction extends ActionSupport{
	private int deleteuseridup;
	private String deleteresumenameup;
	
	public int getDeleteuseridup() {
		return deleteuseridup;
	}

	public void setDeleteuseridup(int deleteuseridup) {
		this.deleteuseridup = deleteuseridup;
	}

	public String getDeleteresumenameup() {
		return deleteresumenameup;
	}

	public void setDeleteresumenameup(String deleteresumenameup) {
		this.deleteresumenameup = deleteresumenameup;
	}

	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		System.out.println(deleteuseridup+"123"+deleteresumenameup);
		String realpath = ServletActionContext.getServletContext().getRealPath("/resume");
		System.out.println(realpath+"/"+deleteuseridup+"/"+deleteresumenameup);
		File file=new File(realpath+"/"+deleteuseridup+"/"+deleteresumenameup);
		if(file.delete()){
			System.out.println("É¾³ý³É¹¦");
		}else{
			System.out.println("É¾³ýÊ§°Ü");
		}
		ResumeModel rm=new ResumeModel();
		Resume rs=new Resume(deleteuseridup,deleteresumenameup);
		rm.Deleteresume(rs);
		session.put("resume", rs);
		return SUCCESS;

	}

}
