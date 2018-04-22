package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.javabean.Pager;
import com.recruitmentweb.model.SearchModel;

public class SearchindexinfoAction extends ActionSupport{
	private String search;
	private String workadress;
	private String scope;
	private String companyposition;
	private int pageNow = 1 ; 
	private int pageSize = 2 ; 
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
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String execute(){
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		int count=0;
		SearchModel sm= new SearchModel();
		ArrayList job= sm.searchallindex(workadress, search, companyposition, scope,pageSize,pageNow);
		if(job.size()>1){
			count=(int) job.get(job.size()-1);
		}
		ac.put("searchresult", job);
		Pager page = new Pager(pageNow, count); 
//		Pager page = new Pager(pageNow, pageSize, count);
		session.put("pageinfo", page); 
		return SUCCESS;
	}
}
