package com.recruitmentweb.javabean;

import java.util.Date;

public class Resume {
	private int id;
	private int userid;
	private int gander;
	private String companyname;
	private String industry;
	private String position;
	private String zwlb;
	private Date wstartdate;
	private Date wenddate;
	private String workdescribe;
	private String workplace;
	private String widcheck;
	private String ExpectIndustry;
	private String ExpectPosition;
	private String salary;
	private Date updatedate;
	private String educationbackground;
	private Date sstartdate;
	private String dgsj;
	private String workstate;
	private String selfdescribe;
	private String extra;
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	
	public int getGander() {
		return gander;
	}
	public void setGander(int gander) {
		this.gander = gander;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getZwlb() {
		return zwlb;
	}
	public void setZwlb(String zwlb) {
		this.zwlb = zwlb;
	}
	public Date getWstartdate() {
		return wstartdate;
	}
	public void setWstartdate(Date wstartdate) {
		this.wstartdate = wstartdate;
	}
	public Date getWenddate() {
		return wenddate;
	}
	public void setWenddate(Date wenddate) {
		this.wenddate = wenddate;
	}
	public String getWorkdescribe() {
		return workdescribe;
	}
	public void setWorkdescribe(String workdescribe) {
		this.workdescribe = workdescribe;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getWidcheck() {
		return widcheck;
	}
	public void setWidcheck(String widcheck) {
		this.widcheck = widcheck;
	}
	public String getExpectIndustry() {
		return ExpectIndustry;
	}
	public void setExpectIndustry(String expectIndustry) {
		ExpectIndustry = expectIndustry;
	}
	public String getExpectPosition() {
		return ExpectPosition;
	}
	public void setExpectPosition(String expectPosition) {
		ExpectPosition = expectPosition;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getEducationbackground() {
		return educationbackground;
	}
	public void setEducationbackground(String educationbackground) {
		this.educationbackground = educationbackground;
	}
	public Date getSstartdate() {
		return sstartdate;
	}
	public void setSstartdate(Date sstartdate) {
		this.sstartdate = sstartdate;
	}
	public Date getSenddate() {
		return senddate;
	}
	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}
	public String getSchoolname() {
		return schoolname;
	}
	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	private Date senddate;
	private String schoolname;
	private String zhuanye;
	private String resumename;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getResumename() {
		return resumename;
	}
	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	
	public String getDgsj() {
		return dgsj;
	}
	public void setDgsj(String dgsj) {
		this.dgsj = dgsj;
	}
	
	public String getWorkstate() {
		return workstate;
	}
	public void setWorkstate(String workstate) {
		this.workstate = workstate;
	}
	
	public String getSelfdescribe() {
		return selfdescribe;
	}
	public void setSelfdescribe(String selfdescribe) {
		this.selfdescribe = selfdescribe;
	}
	
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	
	public Resume() {
		super();
	}
	public Resume(int userid, String companyname, String industry, String position, String zwlb, Date wstartdate,
			Date wenddate, String workdescribe, String workplace, String widcheck, String expectIndustry,
			String expectPosition, String salary, String educationbackground, Date sstartdate, Date senddate,
			String schoolname, String zhuanye,int gander,String dgsj,String workstate) {
		super();
		this.userid = userid;
		this.companyname = companyname;
		this.industry = industry;
		this.position = position;
		this.zwlb = zwlb;
		this.wstartdate = wstartdate;
		this.wenddate = wenddate;
		this.workdescribe = workdescribe;
		this.workplace = workplace;
		this.widcheck = widcheck;
		ExpectIndustry = expectIndustry;
		ExpectPosition = expectPosition;
		this.salary = salary;
		this.educationbackground = educationbackground;
		this.sstartdate = sstartdate;
		this.senddate = senddate;
		this.schoolname = schoolname;
		this.zhuanye = zhuanye;
		this.gander=gander;
		this.dgsj=dgsj;
		this.workstate=workstate;
	}
	
	public Resume(int userid, String resumename) {
		super();
		this.userid = userid;
		this.resumename = resumename;
	}
	public Resume(int userid, String resumename, String extra) {
		super();
		this.userid = userid;
		this.extra = extra;
		this.resumename = resumename;
	}
	public Resume(String educationbackground, Date sstartdate, Date senddate, String schoolname, String zhuanye,int id,int userid,String resumename) {
		super();
		this.educationbackground = educationbackground;
		this.sstartdate = sstartdate;
		this.senddate = senddate;
		this.schoolname = schoolname;
		this.zhuanye = zhuanye;
		this.id=id;
		this.userid=userid;
		this.resumename=resumename;
	}
	public Resume(int id, int userid, String companyname, String industry, String position, String zwlb,
			Date wstartdate, Date wenddate, String workdescribe, String resumename) {
		super();
		this.id = id;
		this.userid = userid;
		this.companyname = companyname;
		this.industry = industry;
		this.position = position;
		this.zwlb = zwlb;
		this.wstartdate = wstartdate;
		this.wenddate = wenddate;
		this.workdescribe = workdescribe;
		this.resumename = resumename;
	}

	
	

}
