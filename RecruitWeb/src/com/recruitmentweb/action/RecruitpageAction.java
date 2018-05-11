package com.recruitmentweb.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.model.CompanyanduserModel;
import com.recruitmentweb.model.ResumeModel;

public class RecruitpageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pageNow = 1 ; 
	private int pageSize = 5 ; 
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
		ResumeModel rm=new ResumeModel();
		ActionContext context=ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		User user=(User) session.get("user");
		if(user==null){
			return ERROR;
		}
		int userid=user.getUserid();
		ArrayList<Resume> resume=rm.selectrename(userid);
		ArrayList getresume=rm.searchjobintenttableinformation(userid);
		getresume=getArrayList(getresume);
		ArrayList tuijian=new ArrayList<>();
		CompanyanduserModel cam=new CompanyanduserModel();	
		if(((Resume) getresume.get(0)).getWorkplace()!=null){			
			for(int i=0;i<getresume.size();i++){
				if(((Resume) getresume.get(i)).getWorkplace()!=null&&((Resume)getresume.get(i)).getExpectPosition()!=null){		
					String workplace=((Resume) getresume.get(i)).getWorkplace();
					String expectPosition=((Resume) getresume.get(i)).getExpectPosition();
					if(workplace.isEmpty() || expectPosition.isEmpty()){
						getresume.remove(i);
						i--;
						continue;
					}
					System.out.println(workplace+expectPosition);
					tuijian.add(cam.searchformreceiveresume(workplace, expectPosition));
				}
			}
			tuijian=shuffle2(tuijian);
		}
		context.put("resume", resume);
		context.put("tuijian",tuijian);
		if(resume!=null){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}

	 public <T> ArrayList shuffle2(ArrayList<T> list) {
	        int size = list.size();
	        Random random = new Random();
	        
	        for(int i = 0; i < size; i++) {
	            // 获取随机位置
	            int randomPos = random.nextInt(size);
	            
	            // 当前元素与随机元素交换
	            Collections.swap(list, i, randomPos);
	        }
			return list;
	    }
	  public  ArrayList getArrayList(ArrayList list){
		  if(list.size()>0){		  
			  for(int i=0;i<list.size();i++){
				  for(int j=i+1;j<list.size();j++){
					  //有为空时候的bug待解决
					  if(((Resume) list.get(i)).getWorkplace()==null||((Resume) list.get(i)).getExpectPosition()==null){
						  list.remove(i);
						  i--;
						  continue;
					  }
					  if(((Resume) list.get(i)).getWorkplace().equals(((Resume) list.get(j)).getWorkplace())&&((Resume) list.get(i)).getExpectPosition().equals(((Resume) list.get(j)).getExpectPosition())){
						  list.remove(j);
						  
					  }
				  }
				  
			  }
		  }
	        return list;
	    }

}


