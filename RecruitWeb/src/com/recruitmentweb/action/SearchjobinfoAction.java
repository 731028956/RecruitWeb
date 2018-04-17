package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.CompanyModel;

public class SearchjobinfoAction extends ActionSupport {
	private String companyposition;
	private int companyid;

	public String getCompanyposition() {
		return companyposition;
	}

	public void setCompanyposition(String companyposition) {
		this.companyposition = companyposition;
	}

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public String execute() {
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		CompanyModel cm = new CompanyModel();
		Job job = (Job) session.get("job");
		job = cm.searchjobinfo(companyid, companyposition);
		session.put("job", job);
		return SUCCESS;

	}

}
