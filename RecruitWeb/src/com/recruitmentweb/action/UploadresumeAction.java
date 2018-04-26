package com.recruitmentweb.action;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.ResumeModel;

public class UploadresumeAction extends ActionSupport{
	private File uploadresume;
	private String uploadresumeFileName;
	private String uploadresumeContentType;
	public File getUploadresume() {
		return uploadresume;
	}

	public void setUploadresume(File uploadresume) {
		this.uploadresume = uploadresume;
	}

	public String getUploadresumeFileName() {
		return uploadresumeFileName;
	}

	public void setUploadresumeFileName(String uploadresumeFileName) {
		this.uploadresumeFileName = uploadresumeFileName;
	}

	public String getUploadresumeContentType() {
		return uploadresumeContentType;
	}

	public void setUploadresumeContentType(String uploadresumeContentType) {
		this.uploadresumeContentType = uploadresumeContentType;
	}

	public String execute() throws Exception{
		 ActionContext ac=ActionContext.getContext();
		 Map session=ac.getSession();
		 User user=(User) session.get("user");
		 int userid=user.getUserid();
		 String realpath = ServletActionContext.getServletContext().getRealPath("/resume");
		 System.out.println("realpath: "+realpath); 
		 StringBuffer bf=new StringBuffer();
		 bf.append(userid);
		 String filename=bf.toString();
		 File file=new File(new File(realpath),filename);
		 if(!file.exists()){
			 file.mkdirs();
		 }
		 System.out.println(file.getAbsolutePath());
		
		 System.out.println(uploadresumeFileName);
		 if(uploadresume != null){ 
			 File savefile = new File(new File(file.getAbsolutePath()), uploadresumeFileName); 
			 System.out.println(savefile.getAbsolutePath());  
	         System.out.println(savefile.getParentFile()); 
	         System.out.println(savefile.getParentFile().exists());
	         if(savefile.getParentFile().exists()){  
	                try {  
	                    savefile.getParentFile().mkdirs();  
	                    FileUtils.copyFile(uploadresume, savefile);
	                    System.out.println("文件上传成功");
	                    ResumeModel rm=new ResumeModel();		
	                    rm.uploadresume(userid, uploadresumeFileName,uploadresumeFileName);
	                } catch (IOException e) {  
	                    e.printStackTrace();  
	                }  
	                
	            }  
		 }else{
			 System.out.println("没有纸");
		 }
		return SUCCESS;
	}

}
