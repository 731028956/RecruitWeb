package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.javabean.Userimage;
import com.recruitmentweb.method.Base64Test;
import com.recruitmentweb.method.Getin;
import com.recruitmentweb.model.ResumeModel;
import com.recruitmentweb.model.UserModel;

public class GetresumeAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private String resumename;
//	private int userid;
//	
//
//	public String getResumename() {
//		return resumename;
//	}
//
//
//	public void setResumename(String resumename) {
//		this.resumename = resumename;
//	}
//
//
//	public int getUserid() {
//		return userid;
//	}
//
//
//	public void setUserid(int userid) {
//		this.userid = userid;
//	}


	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> session=ac.getSession();
		User user1= (User) session.get("user");	
		Resume rs=(Resume) session.get("resume");
		session.put("educationbackground", null);
		session.put("workexperiences", null);
		int userid=user1.getUserid();
		String resumename=rs.getResumename();	
		Resume rs1=new Resume(userid,resumename);
		UserModel um=new UserModel();
		ResumeModel rm=new ResumeModel();
		User user=new User(userid);
		user=um.selectuserinformation(user);
		
//		Resume rs1=new Resume();
		rs1=rm.searchresumetableinformation(rs1);
		if(rm.searchjobintenttableinformation(rs1)!=null){			
			rs1=rm.searchjobintenttableinformation(rs1);
		}
		if(rm.selecteducationbackground(userid, resumename)!=null){
			ArrayList<Resume> educationbackground=rm.selecteducationbackground(userid, resumename);
			 Iterator<Resume> it1 = educationbackground.iterator();  
		        while(it1.hasNext()){  
		            System.out.println(it1.next().getEducationbackground());  
		        }  
			session.put("educationbackground", educationbackground);
		}
		if(rm.selectworkex(userid, resumename)!=null){
			ArrayList<Resume> workexperiences=rm.selectworkex(userid, resumename);	
			session.put("workexperiences", workexperiences);
		}
		session.put("user",user);	
		session.put("resume", rs1);
		Resume rs2=(Resume) session.get("resume");
		Userimage ui=new Userimage(userid);
		if(um.searchimage(ui)!=null){
//			String path=ServletActionContext.getServletContext().getRealPath("/img/")+ui.getImagepath();	
//			System.out.println(path);
//			String result=Getin.readFileByBytes(path);
//			String adress=Base64Test.GenerateImage(result, path);
			String result=ui.getImagepath()+".jpg";
//			System.out.println(result);
			session.put("image", result);
			
		}else{
			session.put("image", null);
			
		}
		return SUCCESS;		
	}
}
