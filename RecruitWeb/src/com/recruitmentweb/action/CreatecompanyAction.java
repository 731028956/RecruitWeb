package com.recruitmentweb.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.model.CompanyModel;

public class CreatecompanyAction extends ActionSupport{
	private String companyphone;
	private String companyname;
	private Date companysetdate;
	private String companyadress;
	private String companyindustry;
	private String cpnature;
	private String scale;
	private String linkuser;
	private String profile;

	public String getCompanyphone() {
		return companyphone;
	}
	public void setCompanyphone(String companyphone) {
		this.companyphone = companyphone;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public Date getCompanysetdate() {
		return companysetdate;
	}
	public void setCompanysetdate(Date companysetdate) {
		this.companysetdate = companysetdate;
	}
	public String getCompanyadress() {
		return companyadress;
	}
	public void setCompanyadress(String companyadress) {
		this.companyadress = companyadress;
	}
	public String getCompanyindustry() {
		return companyindustry;
	}
	public void setCompanyindustry(String companyindustry) {
		this.companyindustry = companyindustry;
	}
	public String getCpnature() {
		return cpnature;
	}
	public void setCpnature(String cpnature) {
		this.cpnature = cpnature;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getLinkuser() {
		return linkuser;
	}
	public void setLinkuser(String linkuser) {
		this.linkuser = linkuser;
	}
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String execute() throws Exception {
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Company c=(Company) session.get("company");
		int id=c.getCompanyid();
		Company cp=new Company(companyphone, companyname, companysetdate, companyadress, companyindustry, cpnature, scale, linkuser, profile,id);
		CompanyModel cm=new CompanyModel();
		cm.updatecompany(cp);
		session.put("company", cp);		
		return SUCCESS;
		
	}
}
