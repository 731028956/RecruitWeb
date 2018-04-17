package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;



public class GetresumeindexAction extends ActionSupport{
	 Map<String, Object> result = new HashMap<String, Object>(0);  



	public Map<String, Object> getResult() {
		return result;
	}



	public void setResult(Map<String, Object> result) {
		this.result = result;
	}





	public String addType(){
		ActionContext ac= ActionContext.getContext();
		Map session=ac.getSession();
		User user=(User) session.get("user");
		int userid=user.getUserid();
		ResumeModel rm=new ResumeModel();
		ArrayList<Resume> resume=rm.selectrename(userid);
			for (int i = 0; i < resume.size(); i++) {
			 	result.put(resume.get(i).getId()+"", resume.get(i).getResumename());		
		        }
		
		System.out.println(123);
	
		if(!resume.isEmpty()){
			
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
