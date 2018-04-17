package com.recruitmentweb.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;
import com.recruitmentweb.model.UserModel;

public class EditmyinfoAction extends ActionSupport{
	private String username;
	private String sex;
	private java.sql.Date birthday;
	private String gzjy;
	private String workstate;
	private String adress;
	private String resumename;
//	private File faceimg;
//	private String faceimgFileName;
//	private String faceimgContentType;
	private String saveimage;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}
	public String getGzjy() {
		return gzjy;
	}
	public void setGzjy(String gzjy) {
		this.gzjy = gzjy;
	}
	public String getWorkstate() {
		return workstate;
	}
	public void setWorkstate(String workstate) {
		this.workstate = workstate;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	
	public String getResumename() {
		return resumename;
	}
	public void setResumename(String resumename) {
		this.resumename = resumename;
	}
	
//	public File getFaceimg() {
//		return faceimg;
//	}
//	public void setFaceimg(File faceimg) {
//		this.faceimg = faceimg;
//	}
	

	public String getSaveimage() {
		return saveimage;
	}
	public void setSaveimage(String saveimage) {
		this.saveimage = saveimage;
	}
//	public String getFaceimgFileName() {
//		return faceimgFileName;
//	}
//	public void setFaceimgFileName(String faceimgFileName) {
//		this.faceimgFileName = faceimgFileName;
//	}
//	public String getFaceimgContentType() {
//		return faceimgContentType;
//	}
//	public void setFaceimgContentType(String faceimgContentType) {
//		this.faceimgContentType = faceimgContentType;
//	}
	public String execute() throws Exception{
		ActionContext ac=ActionContext.getContext();
		Map session=ac.getSession();
		Resume resume=(Resume) session.get("resume");
		int userid=resume.getUserid();
		String resumename=resume.getResumename();
		UserModel um=new UserModel();
		ResumeModel rm=new ResumeModel();
		um.updatemyuser(username, sex, birthday, adress, gzjy, userid);
		rm.Updatedate(resume);
		rm.Updatemyworkstate(workstate, userid, resumename);
//		System.out.println(saveimage);
//		上传图
//		 String realpath = ServletActionContext.getServletContext().getRealPath("/img");
//		 System.out.println("realpath: "+realpath);  
//		 if(faceimg != null){  
//	            File savefile = new File(new File(realpath), faceimgFileName);  
//	            System.out.println(savefile);  
//	            System.out.println(savefile.getParentFile());  
//	            if(savefile.getParentFile().exists()){  
//	                try {  
//	                    savefile.getParentFile().mkdirs();  
//	                    FileUtils.copyFile(faceimg, savefile);
//	                    System.out.println("文件上传成功");
//	                } catch (IOException e) {  
//	                    e.printStackTrace();  
//	                }  
//	                ActionContext.getContext().put("message", "文件上传成功");  
//	            }  
//	        }  
		return SUCCESS;
	}
}
