package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.javabean.Userimage;
import com.recruitmentweb.model.CompanyanduserModel;
import com.recruitmentweb.model.ResumeModel;
import com.recruitmentweb.model.UserModel;

public class ShowresumeAction extends ActionSupport{
	private String resumename;
	private int userid;
	private int id;
	private String state;
	public String getResumename() {
		return resumename;
	}

	public void setResumename(String resumename) {
		this.resumename = resumename;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> session=ac.getSession();
		CompanyanduserModel cum=new CompanyanduserModel();
		if(state.equals("Î´²éÔÄ")){			
			cum.updatestate1(id);
		}
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
			ac.put("educationbackground", educationbackground);
		}
		if(rm.selectworkex(userid, resumename)!=null){
			ArrayList<Resume> workexperiences=rm.selectworkex(userid, resumename);	
			ac.put("workexperiences", workexperiences);
		}
		ac.put("user",user);	
		ac.put("resume", rs1);
		Userimage ui=new Userimage(userid);
		if(um.searchimage(ui)!=null){
//			String path=ServletActionContext.getServletContext().getRealPath("/img/")+ui.getImagepath();	
//			System.out.println(path);
//			String result=Getin.readFileByBytes(path);
//			String adress=Base64Test.GenerateImage(result, path);
			String result=ui.getImagepath()+".jpg";
//			System.out.println(result);
			ac.put("image", result);
			
		}else{
			ac.put("image", null);
			
		}
		return SUCCESS;		
	}
		
		
		
	
	
}
