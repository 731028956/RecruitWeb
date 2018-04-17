package com.recruitmentweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.model.CompanyModel;

public class GetjobstateAction extends ActionSupport{
	private int switchstate;
	private int id;
	private String result;

	public int getSwitchstate() {
		return switchstate;
	}

	public void setSwitchstate(int switchstate) {
		this.switchstate = switchstate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String addType() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		CompanyModel cm=new CompanyModel();
		cm.changestate(switchstate, id);
		result="121212";
		return SUCCESS;

	}
}
