package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.SearchModel;

public class NoselectindexAction extends ActionSupport{
	
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		SearchModel sm= new SearchModel();
		ArrayList<Job> job= sm.searchallindex("È«¹ú", "");
		ac.put("searchresult", job);
		return SUCCESS;
	}

}
