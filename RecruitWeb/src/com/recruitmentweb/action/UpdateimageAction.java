package com.recruitmentweb.action;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.javabean.Userimage;
import com.recruitmentweb.method.Base64Test;
import com.recruitmentweb.method.Getin;
import com.recruitmentweb.model.UserModel;

public class UpdateimageAction extends ActionSupport{
	private File imageName;
	private String imageNameFileName;
	private String imageNameContentType;
	public File getImageName() {
		return imageName;
	}
	public void setImageName(File imageName) {
		this.imageName = imageName;
	}
	public String getImageNameFileName() {
		return imageNameFileName;
	}
	public void setImageNameFileName(String imageNameFileName) {
		this.imageNameFileName = imageNameFileName;
	}
	public String getImageNameContentType() {
		return imageNameContentType;
	}
	public void setImageNameContentType(String imageNameContentType) {
		this.imageNameContentType = imageNameContentType;
	}
	public String execute(){
		 ActionContext ac=ActionContext.getContext();
		 Map session=ac.getSession();
		 User user=(User) session.get("user");
		 int userid=user.getUserid();
		 String realpath = ServletActionContext.getServletContext().getRealPath("/img");
		 System.out.println("realpath: "+realpath); 
		 StringBuffer bf=new StringBuffer();
		 bf.append(imageNameFileName);
		 bf.append(userid);
		 imageNameFileName=bf.toString();
		 if(imageName != null){  
	            File savefile = new File(new File(realpath), imageNameFileName);  
	            System.out.println(savefile);  
	            System.out.println(savefile.getParentFile());  
	            if(savefile.getParentFile().exists()){  
	                try {  
	                    savefile.getParentFile().mkdirs();  
	                    FileUtils.copyFile(imageName, savefile);
	                    System.out.println("文件上传成功");
	                } catch (IOException e) {  
	                    e.printStackTrace();  
	                }  
	                ActionContext.getContext().put("message", "文件上传成功");  
	            }  
	        }  
		UserModel um=new UserModel();
//		String path=realpath+"\\"+imageNameFileName;
		String path=imageNameFileName;
		Userimage ui=new Userimage(userid, path);
		if(um.searchimage(ui)!=null){
			um.updateuserimage(ui);
		}else{
			
			um.userimage(ui);
		}
		path=ServletActionContext.getServletContext().getRealPath("/img/")+ui.getImagepath();	
		System.out.println(path);
		String result=Getin.readFileByBytes(path);
		String adress=Base64Test.GenerateImage(result, path);
		result=ui.getImagepath()+".jpg";
		session.put("image", result);
		return SUCCESS;
		
		
		
	}
	
}
