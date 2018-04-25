package com.recruitmentweb.action;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;

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

	public String execute(){
		 ActionContext ac=ActionContext.getContext();
		 Map session=ac.getSession();
		 User user=(User) session.get("user");
		 int userid=user.getUserid();
		 String realpath = ServletActionContext.getServletContext().getRealPath("/resume");
		 System.out.println("realpath: "+realpath); 
		 StringBuffer bf=new StringBuffer();
		 bf.append(userid);
		 bf.append(uploadresumeFileName);		 
		 uploadresumeFileName=bf.toString();
		 System.out.println(uploadresumeFileName);
		 if(uploadresume != null){ 
			 File savefile = new File(new File(realpath), uploadresumeFileName); 
			 System.out.println(savefile);  
	         System.out.println(savefile.getParentFile());  
	         if(savefile.getParentFile().exists()){  
	                try {  
	                    savefile.getParentFile().mkdirs();  
	                    FileUtils.copyFile(uploadresume, savefile);
	                    System.out.println("文件上传成功");
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
