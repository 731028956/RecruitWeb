package com.recruitmentweb.javabean;

import java.util.Date;

public class Company {
	private int companyid;
	private String companymail;
	private String passeword;
	private String companyphone;
	private String companyname;
	private Date companysetdate;
	private String companyadress;
	private String companyindustry;
	private String cpnature;
	private String scale;
	private String linkuser;
	private String profile;
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	public String getCompanymail() {
		return companymail;
	}
	public void setCompanymail(String companymail) {
		this.companymail = companymail;
	}
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
	public String getPasseword() {
		return passeword;
	}
	public void setPasseword(String passeword) {
		this.passeword = passeword;
	}
	public Company(String companymail, String passeword) {
		super();
		this.companymail = companymail;
		this.passeword = passeword;
	}
	public Company(String companyphone, String companyname, Date companysetdate, String companyadress,
			String companyindustry, String cpnature, String scale, String linkuser, String profile,int companyid) {
		super();
		this.companyphone = companyphone;
		this.companyname = companyname;
		this.companysetdate = companysetdate;
		this.companyadress = companyadress;
		this.companyindustry = companyindustry;
		this.cpnature = cpnature;
		this.scale = scale;
		this.linkuser = linkuser;
		this.profile = profile;
		this.companyid=companyid;
	}
	public Company() {
		// TODO Auto-generated constructor stub
	}
	public Company(int companyid, String companyname, Date companysetdate, String companyadress, String companyindustry,
			String cpnature, String scale, String linkuser, String profile) {
		super();
		this.companyid = companyid;
		this.companyname = companyname;
		this.companysetdate = companysetdate;
		this.companyadress = companyadress;
		this.companyindustry = companyindustry;
		this.cpnature = cpnature;
		this.scale = scale;
		this.linkuser = linkuser;
		this.profile = profile;
	}
	
	
}
