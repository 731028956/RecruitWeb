package com.recruitmentweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.recruitmentweb.javabean.Cau;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.method.Changeage;

public class CompanyanduserModel {
	public Connection conn;
	public PreparedStatement stat;
	public CompanyanduserModel(){
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
	public void insertsendresume_table(int resumeid,int jobid) throws Exception  {
		Changeage ch=new Changeage();
		long updatetime=ch.date().getTime();
		String state="未查阅";
		String sql="insert into sendresume_table(resumeid,jobid,state,updatetime)values(?,?,?,?)";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, resumeid);
			stat.setInt(2, jobid);
			stat.setString(3, state);
			stat.setDate(4, new java.sql.Date(updatetime));
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void insertsendresumecompany(int userid,int jobid,String resumename,Date interviewtime,String interviewadress) throws Exception  {
		Changeage ch=new Changeage();
		long updatetime=ch.date().getTime();
		String state="企业直邀";
		int resumeid = 0;
		String sql="select id from resume_table where userid=? and resumename=?";
		String sql1="insert into sendresume_table(resumeid,jobid,state,updatetime,interviewtime,interviewadress)values(?,?,?,?,?,?)";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2, resumename);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				
				resumeid=rs.getInt("id");
			}
			stat=conn.prepareStatement(sql1);
			stat.setInt(1, resumeid);
			stat.setInt(2, jobid);
			stat.setString(3, state);
			stat.setDate(4, new java.sql.Date(updatetime));
			stat.setDate(5, new java.sql.Date(interviewtime.getTime()));
			stat.setString(6, interviewadress);		
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public boolean judgesevenday(int jobid,int userid) throws Exception{
		Changeage ch=new Changeage();
		String sql="select updatetime from sendresume_job where jobid=? and userid=? order by id desc";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, jobid);
			stat.setInt(2, userid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				Date olddate=rs.getDate("updatetime");
				System.out.println(rs.getDate("updatetime"));
				if(!ch.changing(olddate)){
				
					return false;
				}
			}
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
		
	}
	public ArrayList searchsendresume(int userid,int pageSize,int pageNow){
		ArrayList<Cau> list=new ArrayList<Cau>();
		Changeage ch=new Changeage();
		String sql="select * from sendresume_job where userid=? and state not like ? order by id desc limit "+(pageNow*pageSize-pageSize)+","+pageSize;
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2, "%企业直邀%");
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
			Cau c=new Cau();
			c.setId(rs.getInt("id"));
			c.setUserid(rs.getInt("userid"));
			c.setJobid(rs.getInt("jobid"));
			c.setResumeid(rs.getInt("resumeid"));
			c.setCompanyname(rs.getString("companyname"));
			c.setCompanyposition(rs.getString("companyposition"));
			c.setUpdatetime(rs.getDate("updatetime"));
			c.setInterviewtime(rs.getDate("interviewtime"));
			c.setSalary(rs.getString("salary"));
			c.setState(rs.getString("state"));
			c.setWorkadress(rs.getString("workadress"));
			c.setResumename(rs.getString("resumename"));
			c.setInterviewadress(rs.getString("interviewadress"));
			c.setCompanyid(rs.getInt("companyid"));
			if(!rs.getString("state").equals("企业直邀")){
				
				list.add(c);
			}
			}			
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
		
		
		
	}
	public ArrayList searchuserresume(int userid,int pageSize,int pageNow){
		ArrayList<Cau> list=new ArrayList<Cau>();
		Changeage ch=new Changeage();
		String state="%企业直邀%";
		String sql="select * from sendresume_job where userid=? and state like ? order by id desc limit "+(pageNow*pageSize-pageSize)+","+pageSize;
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2,state);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
			Cau c=new Cau();
			c.setId(rs.getInt("id"));
			c.setUserid(rs.getInt("userid"));
			c.setJobid(rs.getInt("jobid"));
			c.setResumeid(rs.getInt("resumeid"));
			c.setCompanyname(rs.getString("companyname"));
			c.setCompanyposition(rs.getString("companyposition"));
			c.setUpdatetime(rs.getDate("updatetime"));
			c.setInterviewtime(rs.getDate("interviewtime"));
			c.setSalary(rs.getString("salary"));
			c.setState(rs.getString("state"));
			c.setWorkadress(rs.getString("workadress"));
			c.setResumename(rs.getString("resumename"));
			c.setInterviewadress(rs.getString("interviewadress"));
			c.setCompanyid(rs.getInt("companyid"));
			list.add(c);		
			}			
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
		
		
		
	}

	public ArrayList searchreceiveresume(int companyid,int pageSize,int pageNow){	
		ArrayList list=new ArrayList();
		Changeage ch=new Changeage();
		String sql="select * from sendresume_job where companyid=? order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, companyid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
			Cau c=new Cau();
			c.setId(rs.getInt("id"));
			c.setUserid(rs.getInt("userid"));
			c.setJobid(rs.getInt("jobid"));
			c.setResumeid(rs.getInt("resumeid"));
			c.setCompanyname(rs.getString("companyname"));
			c.setCompanyposition(rs.getString("companyposition"));
			c.setUpdatetime(rs.getDate("updatetime"));
			c.setInterviewtime(rs.getDate("interviewtime"));
			c.setSalary(rs.getString("salary"));
			c.setState(rs.getString("state"));
			c.setWorkadress(rs.getString("workadress"));
			c.setResumename(rs.getString("resumename"));
			c.setInterviewadress(rs.getString("interviewadress"));
			sql="select * from user_table where userid=?";
			stat=conn.prepareStatement(sql);
			stat.setInt(1, rs.getInt("userid"));
			ResultSet rs1=stat.executeQuery();
			while(rs1.next()){
				User user=new User();
				user.setUsername(rs1.getString("username"));
				user.setAdress(rs1.getString("adress"));
				user.setAge(rs1.getInt("age"));
				user.setSex(rs1.getString("sex"));
				user.setGzjy(rs1.getString("gzjy"));
				c.setUser(user);
	
			}
			
			list.add(c);
			}		
			
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
		
		
		
	}
	public void updatestate1(int id){
		String sql="update sendresume_table set state=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "已查阅");
			stat.setInt(2, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updatestate2(int id){
		String sql="update sendresume_table set state=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "已拒绝");
			stat.setInt(2, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updatestate3(int id){
		String sql="update sendresume_table set state=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "企业直邀(已拒绝)");
			stat.setInt(2, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updatestate4(int id){
		String sql="update sendresume_table set state=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "企业直邀(已接受)");
			stat.setInt(2, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updateinterview(int id,Date interviewtime,String interviewadress){
		String sql="update sendresume_table set interviewtime=?,interviewadress=?,state=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setDate(1, new java.sql.Date(interviewtime.getTime()));
			stat.setString(2, interviewadress);
			stat.setString(3, "已邀请");
			stat.setInt(4, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ArrayList searchformreceiveresume(int companyid,int pageSize,int pageNow){
		ArrayList list=new ArrayList();
		
		String sql="SELECT companyjob_table.id,companyjob_table.companyposition,workadress,companyjob_table.salary,jobintent_table.resumename,user_table.userid,username,age,sex,user_table.gzjy "
				+ "FROM jobintent_table JOIN companyjob_table JOIN user_table "
				+ "ON jobintent_table.workplace=companyjob_table.workadress  AND jobintent_table.userid= user_table.userid where"
				+ " (companyjob_table.companyposition like CONCAT(?,jobintent_table.ExpectPosition,?))and companyjob_table.companyid=?  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%");
			stat.setString(2, "%");
			stat.setInt(3, companyid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
			Cau c=new Cau();
			c.setJobid(rs.getInt("id"));
			c.setUserid(rs.getInt("userid"));
			c.setCompanyposition(rs.getString("companyposition"));
			c.setSalary(rs.getString("salary"));
			c.setWorkadress(rs.getString("workadress"));
			c.setResumename(rs.getString("resumename"));
			User user=new User();
			user.setUserid(rs.getInt("userid"));
			user.setUsername(rs.getString("username"));
			user.setAge(rs.getInt("age"));
			user.setGzjy(rs.getString("gzjy"));
			user.setSex(rs.getString("sex"));
			c.setUser(user);
			String sql1="select *from sendresume_job where userid=? and jobid=?";
			PreparedStatement stat1 = conn.prepareStatement(sql1);
 			stat1.setInt(1, rs.getInt("userid"));
			stat1.setInt(2, rs.getInt("id"));
			ResultSet rs1=stat1.executeQuery();		
			if(rs1.next()){
			}else{
				list.add(c);
			}	
				rs1.close();
				stat1.close();
			
			}			
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
		
		
		
	}
	public ArrayList searchformreceiveresume(String workplace,String expectPosition){
		ArrayList list=new ArrayList();
		String sql="select * from company_job where workadress=? and companyposition like ? and state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, workplace);
			stat.setString(2, "%"+expectPosition.trim()+"%");
			System.out.println("%"+expectPosition.trim()+"%");
//			stat.setInt(3, );
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
			Cau c=new Cau();
			c.setJobid(rs.getInt("id"));
			c.setCompanyid(rs.getInt("companyid"));
			c.setCompanyposition(rs.getString("companyposition"));
			c.setSalary(rs.getString("salary"));
			c.setWorkadress(rs.getString("workadress"));
			c.setCompanyname(rs.getString("companyname"));
			c.setUpdatetime(rs.getDate("updatetime"));
			list.add(c);
			}
			return list;
			} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
			
		}
		
		
		
	}
}
