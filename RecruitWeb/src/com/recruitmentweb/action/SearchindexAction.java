package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.SearchModel;

public class SearchindexAction extends ActionSupport{
	private String search;
	private String workadress;
	private String scope;
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	public String getWorkadress() {
		return workadress;
	}
	public void setWorkadress(String workadress) {
		this.workadress = workadress;
	}
	
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		SearchModel sm= new SearchModel();
		
			if(search.isEmpty()){
				ArrayList<Job> job= sm.searchemptyworkplaceindex(workadress);
				ac.put("searchresult", job);
			}
			else {	
					if(scope.equals("¹«Ë¾")){
						ArrayList<Job> job=sm.searchcompanyindex(workadress, search);
						ac.put("searchresult", job);
					}	else{
						ArrayList<Job> job=sm.searchallindex(workadress, search);
						ac.put("searchresult", job);
						
					}
			}
		
		
		return SUCCESS;
	}
}
