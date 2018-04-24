package com.recruitmentweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import com.recruitmentweb.javabean.Resume;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.method.Changeage;

public class ResumeModel {
	public Connection conn;
	public PreparedStatement stat;
	public ResumeModel(){
		String driver = "com.mysql.jdbc.Driver";
		String uri = "jdbc:mysql://localhost:3306/recruitmentweb?useSSL=true";
		String user = "root";
		String password = "root";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(uri, user, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ArrayList<Resume> selectrename(int userid){
		String sql;
		ArrayList<Resume> resume = new ArrayList<Resume>();
		sql="select * from resume_table where userid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			ResultSet rs =stat.executeQuery();
			while(rs.next()){
				Resume re=new Resume();
				re.setId(rs.getInt(1));
				re.setUserid(rs.getInt(2));
				re.setResumename(rs.getString(3));
				re.setUpdatedate(rs.getDate(4));
				resume.add(re);	
//				rs.close();
//				stat.close();
//				conn.close();
			}
			return resume;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	
	
	}
	public Resume searchresumetableinformation(Resume resume){
		String sqlresume="select * from resume_table where userid=? and resumename=?";
////		String sqlwp="select * from workexperiences_table where userid=? and resumename=?";
////		String sqleb="select * from educationbackground_table where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sqlresume);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resume.getResumename());
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				resume.setUpdatedate(rs.getDate(4));
				System.out.println(rs.getDate(4));
				return resume;
			}
			return null;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public Resume searchjobintenttableinformation(Resume resume){
		String sqljt="select * from jobintent_table where userid= ? and resumename=?";
		try {
			stat=conn.prepareStatement(sqljt);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resume.getResumename());
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				resume.setWidcheck(rs.getString(3));
				resume.setWorkplace(rs.getString(4));
				resume.setExpectIndustry(rs.getString(5));
				resume.setExpectPosition(rs.getString(6));
				resume.setSalary(rs.getString(7));
				resume.setDgsj(rs.getString(9));
				resume.setWorkstate(rs.getString(10));
				resume.setSelfdescribe(rs.getString(11));
				return resume;
			}
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public ArrayList searchjobintenttableinformation(int userid){
		ArrayList al=new ArrayList<>();
	
		String sqljt="select * from jobintent_table where userid= ?";
		try {
			stat=conn.prepareStatement(sqljt);
			stat.setInt(1, userid);			
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				Resume re=new Resume();
				re.setExpectPosition(rs.getString("ExpectPosition"));
				re.setWorkplace(rs.getString("workplace"));
				al.add(re);
			}
			return al;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public ArrayList<Resume> selecteducationbackground(int userid,String resumename){
		String sql;
		ArrayList<Resume> resume = new ArrayList<Resume>();
		sql="select * from educationbackground_table where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2, resumename);
			ResultSet rs =stat.executeQuery();
			while(rs.next()){
				Resume re=new Resume();
				re.setId(rs.getInt(1));
				re.setUserid(rs.getInt(2));
				re.setEducationbackground(rs.getString(3));
				re.setSstartdate(rs.getDate(4));
				re.setSenddate(rs.getDate(5));
				re.setSchoolname(rs.getString(6));
				re.setZhuanye(rs.getString(7));
				re.setResumename(rs.getString(8));
				resume.add(re);	
				
			}
			return resume;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	
	
	}
	public ArrayList<Resume> selectworkex(int userid,String resumename){
		String sql;
		int i=0;
		ArrayList<Resume> resume = new ArrayList<Resume>();
		sql="select * from workexperiences_table where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2, resumename);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				
				Resume re=new Resume();
				re.setId(rs.getInt(1));
				re.setUserid(rs.getInt(2));
				re.setCompanyname(rs.getString(3));
				re.setIndustry(rs.getString(4));
				re.setPosition(rs.getString(5));
				re.setZwlb(rs.getString(6));
				re.setWstartdate(rs.getDate(7));
				re.setWenddate(rs.getDate(8));
				re.setWorkdescribe(rs.getString(9));
				re.setResumename(rs.getString(10));
				resume.add(re);
				
			}
				return resume;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
	}
	
	public boolean creatresume(Resume resume) throws Exception{
		Changeage ch=new Changeage();
		long updatetime=ch.date().getTime();
		String resumename=null;
		if(resume.getResumename()!=null){
			resumename=resume.getResumename();
		}else{
			resumename="第一简历";
		}
		String sql="insert into resume_table(userid,resumename,updatedate)values(?,?,?)";
//		String sqlj="insert into jobintent_table(userid,widcheck,workplace,ExpectIndustry,"
//				+ "ExpectPosition,salary,resumename,dgsj,workstate)values(?,?,?,?,?,?,?,?,?);";
//		String sqle="insert into educationbackground_table(userid,educationbackground,startdate,"
//				+ "enddate,schoolname,zhuanye,resumename)values(?,?,?,?,?,?,?)";
//		String sqlw="insert into workexperiences_table(userid,companyname,industry,position,"
//				+ "zwlb,startdate,enddate,workdescribe,resumename)values(?,?,?,?,?,?,?,?,?)";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resumename);
			stat.setDate(3,new java.sql.Date(updatetime));
			stat.executeUpdate();
//			stat=conn.prepareStatement(sqlj);
//			stat.setInt(1, resume.getUserid());
//			stat.setString(2, resume.getWidcheck());
//			stat.setString(3, resume.getWorkplace());
//			stat.setString(4, resume.getExpectIndustry());
//			stat.setString(5, resume.getExpectIndustry());
//			stat.setString(6, resume.getSalary());
//			stat.setString(7, resumename);
//			stat.setString(8, resume.getDgsj());
//			stat.setString(9, resume.getWorkstate());
//			stat.executeUpdate(); 
//			stat=conn.prepareStatement(sqle);
//			stat.setInt(1, resume.getUserid());
//			stat.setString(2, resume.getEducationbackground());
//			stat.setDate(3, new Date(resume.getSstartdate().getTime()));
//			stat.setDate(4, new Date(resume.getSenddate().getTime()));
//			stat.setString(5, resume.getSchoolname());
//			stat.setString(6, resume.getZhuanye());
//			stat.setString(7, resumename);
//			stat.executeUpdate();
//			if(resume.getGander()==1){
//				stat=conn.prepareStatement(sqlw);
//				java.util.Date Sdate=resume.getWstartdate();
//				java.util.Date Wdate=resume.getWenddate();	
//				stat.setInt(1, resume.getUserid());
//				stat.setString(2, resume.getCompanyname());
//				stat.setString(3, resume.getIndustry());
//				stat.setString(4, resume.getPosition());
//				stat.setString(5, resume.getZwlb());
//				if(Sdate!=null){
//				stat.setDate(6, new Date(Sdate.getTime()));
//				stat.setDate(7, new Date(Wdate.getTime()));
//				}
//				else{
//					stat.setDate(6,null);
//					stat.setDate(7,null);				
//				}
//				stat.setString(8, resume.getWorkdescribe());
//				stat.setString(9, resumename);
//				stat.executeUpdate();
//			}
			
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}	
	}
	public boolean  creatjobintent(Resume resume){
		String sqlj="insert into jobintent_table(userid,widcheck,workplace,ExpectIndustry,"
		+ "ExpectPosition,salary,resumename,dgsj,workstate)values(?,?,?,?,?,?,?,?,?)";
		String resumename="第一简历";
		try {
			stat=conn.prepareStatement(sqlj);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resume.getWidcheck());
			stat.setString(3, resume.getWorkplace());
			stat.setString(4, resume.getExpectIndustry());
			stat.setString(5, resume.getExpectIndustry());
			stat.setString(6, resume.getSalary());
			stat.setString(7, resumename);
			stat.setString(8, resume.getDgsj());
			stat.setString(9, resume.getWorkstate());
			stat.executeUpdate(); 
			System.out.println("sqlj已被执行");
			return true;
		} 	
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		
	}
	public boolean  newcreatjobintent(Resume resume){
		String sql="insert into jobintent_table(userid,resumename)values(?,?)";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resume.getResumename());
			stat.executeUpdate(); 
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean  createducation(Resume resume){
		String sqle="insert into educationbackground_table(userid,educationbackground,startdate,"
		+ "enddate,schoolname,zhuanye,resumename)values(?,?,?,?,?,?,?)";
		String resumename=null;
		System.out.println(resume.getResumename()+"xueli");
		if(resume.getResumename()!=null){
			resumename=resume.getResumename();
		}else{
			resumename="第一简历";
		}
		try {
			stat=conn.prepareStatement(sqle);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resume.getEducationbackground());
			stat.setDate(3, new Date(resume.getSstartdate().getTime()));
			stat.setDate(4, new Date(resume.getSenddate().getTime()));
			stat.setString(5, resume.getSchoolname());
			stat.setString(6, resume.getZhuanye());
			stat.setString(7, resumename);
			stat.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		
	}
	public boolean  creatworkex(Resume resume){
		String sqlw="insert into workexperiences_table(userid,companyname,industry,position,"
		+ "zwlb,startdate,enddate,workdescribe,resumename)values(?,?,?,?,?,?,?,?,?)";
		System.out.println(resume.getResumename()+"jingyan");
		String resumename=null;
		if(resume.getResumename()!=null){
			resumename=resume.getResumename();
		}else{
			resumename="第一简历";
		}
		try {
			System.out.println(resume.getGander()+"gander");
			if(resume.getGander()==0){
				stat=conn.prepareStatement(sqlw);
				java.util.Date Sdate=resume.getWstartdate();
				java.util.Date Wdate=resume.getWenddate();	
				stat.setInt(1, resume.getUserid());
				stat.setString(2, resume.getCompanyname());
				stat.setString(3, resume.getIndustry());
				stat.setString(4, resume.getPosition());
				stat.setString(5, resume.getZwlb());
			if(Sdate!=null){
				stat.setDate(6, new Date(Sdate.getTime()));
				stat.setDate(7, new Date(Wdate.getTime()));
			}
			else{
				stat.setDate(6,null);
				stat.setDate(7,null);				
			}
				stat.setString(8, resume.getWorkdescribe());
				stat.setString(9, resumename);
				stat.executeUpdate();
				return true;
			}
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
	}
	public void Updatersumename(Resume resume){
		String sql="update 	resume_table set resumename=? where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, resume.getResumename());
			stat.setInt(2, resume.getUserid());
			stat.setString(3, resume.getExtra());
			System.out.println(resume.getResumename()+"sql");
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void Updatersumenamew(Resume resume){
		String sql="update 	workexperiences_table set resumename=? where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, resume.getResumename());
			stat.setInt(2, resume.getUserid());
			stat.setString(3, resume.getExtra());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void Updatersumenamej(Resume resume){
		String sql="update 	jobintent_table set resumename=? where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, resume.getResumename());
			stat.setInt(2, resume.getUserid());
			stat.setString(3, resume.getExtra());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void Updatersumenamee(Resume resume){
		String sql="update 	educationbackground_table set resumename=? where userid=? and resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, resume.getResumename());
			stat.setInt(2, resume.getUserid());
			stat.setString(3, resume.getExtra());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void Updatedate(Resume resume) throws Exception{
		Changeage ch=new Changeage();
		long updatetime=ch.date().getTime();
		String sql="update resume_table set updatedate=? where userid=? and resumename=? ";
		stat=conn.prepareStatement(sql);
		stat.setDate(1,	new java.sql.Date(updatetime));
		stat.setInt(2, resume.getUserid());
		stat.setString(3, resume.getResumename());
		stat.executeUpdate();
	}
	public void Updatemyworkstate(String workstate,int userid,String resumename) throws Exception{
		String sql="update jobintent_table set workstate=? where userid=? and resumename=? ";
		stat=conn.prepareStatement(sql);
		stat.setString(1, workstate);
		stat.setInt(2, userid);
		stat.setString(3, resumename);
		stat.executeUpdate();
	}
	public void Updateit(String salary,String workplace,String ExpectPosition,String ExpectIndustry,String selfdescribe,String dgsj,String widcheck,String resumename,int userid){
		String sql="update jobintent_table set salary=?,workplace=?,ExpectPosition=?,ExpectIndustry=?,selfdescribe=?,dgsj=?,widcheck=? where resumename=? and userid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, salary);
			stat.setString(2, workplace);
			stat.setString(3, ExpectPosition);
			stat.setString(4, ExpectIndustry);
			stat.setString(5, selfdescribe);
			stat.setString(6, dgsj);
			stat.setString(7, widcheck);
			stat.setString(8, resumename);
			stat.setInt(9, userid);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void Updateedugb(Resume resume){
		String sql="update educationbackground_table set schoolname=?,startdate=?,enddate=?,zhuanye=?,educationbackground=? where id=?";
		
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, resume.getSchoolname());
			stat.setDate(2, new java.sql.Date(resume.getSstartdate().getTime()));
			stat.setDate(3, new java.sql.Date(resume.getSenddate().getTime()));
			stat.setString(4, resume.getZhuanye());
			stat.setString(5, resume.getEducationbackground());
			stat.setInt(6, resume.getId());
			stat.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}
	public void Updatewe(Resume resume){
		String sql="update workexperiences_table set companyname=?,startdate=?,enddate=?,industry=?,position=?,zwlb=?,workdescribe=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, resume.getCompanyname());
			stat.setDate(2, new java.sql.Date(resume.getWstartdate().getTime()));
			stat.setDate(3, new java.sql.Date(resume.getWenddate().getTime()));
			stat.setString(4, resume.getIndustry());
			stat.setString(5, resume.getPosition());
			stat.setString(6, resume.getZwlb());
			stat.setString(7, resume.getWorkdescribe());
			stat.setInt(8, resume.getId());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void Deleteb(int id){
		System.out.println(id+"woshi2");
		String sql="delete from educationbackground_table where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public void Deletex(int id){
		String sql="delete from workexperiences_table where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void Deleteresume(Resume resume){
		String sql="delete resume_table.*,jobintent_table.*,educationbackground_table.*,workexperiences_table.*"
				+ "from resume_table LEFT JOIN jobintent_table ON resume_table.userid=jobintent_table.userid AND resume_table.resumename=jobintent_table.resumename "
				+ "LEFT JOIN educationbackground_table ON resume_table.userid=educationbackground_table.userid AND resume_table.resumename=educationbackground_table.resumename "
				+ "LEFT JOIN workexperiences_table ON resume_table.userid=workexperiences_table.userid AND resume_table.resumename=workexperiences_table.resumename "
				+ "WHERE resume_table.userid=? AND resume_table.resumename=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, resume.getUserid());
			stat.setString(2, resume.getResumename());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
