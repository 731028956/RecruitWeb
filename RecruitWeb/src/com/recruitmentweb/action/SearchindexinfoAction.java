package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.SearchModel;

public class SearchindexinfoAction extends ActionSupport{
	private String search;
	private String workadress;
	private String scope;
	private String companyposition;
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
	public String getCompanyposition() {
		return companyposition;
	}
	public void setCompanyposition(String companyposition) {
		this.companyposition = companyposition;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		SearchModel sm= new SearchModel();
		ArrayList<Job> job= sm.searchallindex(workadress, search, companyposition, scope);
		ac.put("searchresult", job);
		return SUCCESS;
	}
}
