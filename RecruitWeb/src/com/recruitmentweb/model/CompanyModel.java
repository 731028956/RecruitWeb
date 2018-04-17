package com.recruitmentweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Job;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.method.Changeage;

public class CompanyModel {
	public Connection conn;
	public PreparedStatement stat;
	public CompanyModel(){
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
	public boolean register(Company company){
		String sql="insert into company_table(companymail, password) values(?,?)";
		ResultSet rs=null;	
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, company.getCompanymail());
			stat.setString(2, company.getPasseword());
			stat.executeUpdate();
			stat=conn.prepareStatement("select * from company_table where companymail=?");
			stat.setString(1, company.getCompanymail());
			rs=stat.executeQuery();
			while(rs.next()){
				company.setCompanyid(rs.getInt(1));
				
			}
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	
		
	}
	public void updatecompany(Company company) throws Exception{
		String sql2="update company_table set companyname=?,companysetdate=?,companyadress=?,companyindustry=?,cpnature=?,scale=?,linkuser=?,profile=? where companyid=?";
		String sql="update company_table set companyphone=?,companyname=?,companysetdate=?,companyadress=?,companyindustry=?,cpnature=?,scale=?,linkuser=?,profile=? where companyid=?";
		try {
			if(company.getCompanyphone()!=null){
			stat=conn.prepareStatement(sql);
			stat.setString(1, company.getCompanyphone());
			stat.setString(2, company.getCompanyname());
			stat.setDate(3, new java.sql.Date(company.getCompanysetdate().getTime()));
			stat.setString(4, company.getCompanyadress());
			stat.setString(5, company.getCompanyindustry());
			stat.setString(6, company.getCpnature());
			stat.setString(7, company.getScale());
			stat.setString(8, company.getLinkuser());
			stat.setString(9, company.getProfile());
			stat.setInt(10, company.getCompanyid());
			stat.executeUpdate();
			}
			else{
				stat=conn.prepareStatement(sql2);
				stat.setString(1, company.getCompanyname());
				stat.setDate(2, new java.sql.Date(company.getCompanysetdate().getTime()));
				stat.setString(3, company.getCompanyadress());
				stat.setString(4, company.getCompanyindustry());
				stat.setString(5, company.getCpnature());
				stat.setString(6, company.getScale());
				stat.setString(7, company.getLinkuser());
				stat.setString(8, company.getProfile());
				stat.setInt(9, company.getCompanyid());
				stat.executeUpdate();
				System.out.println(company.getCompanyname());
				System.out.println(company.getCompanyid()); 
				System.out.println("更新完成");
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	}
	public Company login(Company cm){
		ResultSet rs=null;	
		String sql="select * from company_table where companymail=? and password=?"; 
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, cm.getCompanymail());
			stat.setString(2, cm.getPasseword());
			rs=stat.executeQuery();
			while(rs.next()){
				cm.setCompanyid(rs.getInt(1));
				
				return cm;
			}
			return null;
			
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		}
	public void selectcompanyinfo(Company cm){
		String sql="select * from company_table where companyid=?";
		ResultSet rs=null;
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, cm.getCompanyid());
			rs=stat.executeQuery();
			while(rs.next()){
				cm.setCompanymail(rs.getString(2));
				cm.setCompanyphone(rs.getString(4));
				cm.setCompanyname(rs.getString(5));
				cm.setCompanysetdate(rs.getDate(6));
				cm.setCompanyadress(rs.getString(7));
				cm.setCompanyindustry(rs.getString(8));
				cm.setCpnature(rs.getString(9));
				cm.setScale(rs.getString(10));
				cm.setLinkuser(rs.getString(11));
				cm.setProfile(rs.getString(12));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public void deletecompanyposition(int id){
		String sql="delete from companyjob_table where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public Company selectcompanyinfo(int companyid){
		String sql="select * from company_table where companyid=?";
		ResultSet rs=null;
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, companyid);
			rs=stat.executeQuery();
			Company cm=new Company();
			while(rs.next()){
				cm.setCompanymail(rs.getString(2));
				cm.setCompanyphone(rs.getString(4));
				cm.setCompanyname(rs.getString(5));
				cm.setCompanysetdate(rs.getDate(6));
				cm.setCompanyadress(rs.getString(7));
				cm.setCompanyindustry(rs.getString(8));
				cm.setCpnature(rs.getString(9));
				cm.setScale(rs.getString(10));
				cm.setLinkuser(rs.getString(11));
				cm.setProfile(rs.getString(12));
			}
			return cm;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
					
		}
		
	}
	public Job judgejob(Job job){
		String sql="select *from companyjob_table where companyposition=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, job.getCompanyposition());
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				
				
			}
			System.out.println("优质");
			return job;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
	}
	public void creatjob(Job job) throws Exception {
		Changeage ch=new Changeage();
		long updatetime=ch.date().getTime();
		int state=1;
		String sql="insert into companyjob_table(companyid,companyposition,jobpeople,workadress,gzjy,occupatroninfo,recruitmentrequirement,other,updatetime,state,salary,linkadress,educationbackground) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
//		String sqli="insert into job_state(companyid,companyposition,updatetime,state)values(?,?,?,?)";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, job.getCompanyid());
			stat.setString(2, job.getCompanyposition());
			stat.setString(3, job.getJobpeople());
			stat.setString(4, job.getWorkadress());
			stat.setString(5, job.getGzjy());
			stat.setString(6, job.getOccupatroninfo());
			stat.setString(7, job.getRecruitmentrequirement());
			stat.setString(8, job.getOther());
			stat.setDate(9, new java.sql.Date(updatetime));
			stat.setInt(10, job.getState());
			stat.setString(11, job.getSalary());
			stat.setString(12, job.getLinkadress());
			stat.setString(13, job.getEducationbackground());
			System.out.println("插入成");
			stat.executeUpdate();
//			stat=conn.prepareStatement(sqli);
//			stat.setInt(1, job.getCompanyid());
//			stat.setString(2, job.getCompanyposition());
//			stat.setDate(3,new java.sql.Date(updatetime));
//			stat.setString(4, state);
//			stat.executeUpdate();
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public boolean updatejob(Job job){
		String sql="update companyjob_table set companyposition=?,jobpeople=?,workadress=?,gzjy=?,occupatroninfo=?,recruitmentrequirement=?,other=?,salary=?,linkadress=?,educationbackground=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, job.getCompanyposition());
			stat.setString(2, job.getJobpeople());
			stat.setString(3, job.getWorkadress());
			stat.setString(4, job.getGzjy());
			stat.setString(5, job.getOccupatroninfo());
			stat.setString(6, job.getRecruitmentrequirement());
			stat.setString(7, job.getOther());
			stat.setString(8, job.getSalary());
			stat.setString(9, job.getLinkadress());
			stat.setString(10, job.getEducationbackground());
			stat.setInt(11, job.getId());
			stat.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
	}
	public ArrayList<Job> searchjob(int companyid){
		ArrayList job1=new ArrayList<>();
//		String sql="select * from job_state where companyid=?";
		String sql="select * from companyjob_table where companyid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, companyid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				Job job2=new Job();
				job2.setId(rs.getInt(1));
				job2.setCompanyid(rs.getInt(2));
				job2.setCompanyposition(rs.getString(3));	
				job2.setSalary(rs.getString("salary"));
				job2.setLinkadress(rs.getString("linkadress"));
				job2.setGzjy(rs.getString("gzjy"));
				job2.setState(rs.getInt("state"));
				job2.setUpdatetime(rs.getDate("updatetime"));
				job1.add(job2);
		}
			return job1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	public Job searchjobinfo1(int jobid){
		String sql="select * from company_job where id=? ";
		
		Job job=new Job();
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, jobid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				
				job.setId(rs.getInt(1));
				job.setCompanyid(rs.getInt(2));
				job.setCompanyname(rs.getString(3));
				job.setJobpeople(rs.getString(4));
				job.setWorkadress(rs.getString(5));
				job.setGzjy(rs.getString(6));
				job.setOccupatroninfo(rs.getString(7));
				job.setRecruitmentrequirement(rs.getString(8));
				job.setOther(rs.getString(9));
				job.setState(rs.getInt(10));
				job.setUpdatetime(rs.getDate(11));
				job.setSalary(rs.getString(12));
				job.setCompanyposition(rs.getString(13));
				job.setLinkadress(rs.getString(14));
				job.setProfile(rs.getString("profile"));
				job.setEducationbackground(rs.getString("educationbackground"));
				System.out.println(rs.getString("educationbackground"));
			}
			return job;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void changestate(int switchstate ,int id ) throws Exception{
		Changeage ch=new Changeage();
		long updatetime=ch.date().getTime();
		String sql="update companyjob_table set state=?,updatetime=? where id=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, switchstate);
			stat.setDate(2, new java.sql.Date(updatetime));
			stat.setInt(3, id);
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public ArrayList<Job> searchjobinfo(int companyid){
		ArrayList job1=new ArrayList<>();
//		String sql="select * from job_state where companyid=?";
		String sql="select * from company_job where companyid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, companyid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				Job job2=new Job();
				job2.setId(rs.getInt(1));
				job2.setCompanyid(rs.getInt(2));
				job2.setCompanyposition(rs.getString("companyposition"));
				job2.setSalary(rs.getString("salary"));
				job2.setLinkadress(rs.getString("linkadress"));
				job2.setGzjy(rs.getString("gzjy"));
				job2.setState(rs.getInt("state"));
				job2.setUpdatetime(rs.getDate("updatetime"));
				job2.setProfile(rs.getString("profile"));
				job2.setLinkadress(rs.getString("linkadress"));
				job2.setEducationbackground(rs.getString("educationbackground"));
				job1.add(job2);
		}
			return job1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	public Job searchjobinfo(int companyid, String companyposition) {
		// TODO Auto-generated method stub
	String sql="select * from company_job where companyid=? and companyposition=?";
		
		Job job=new Job();
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, companyid);
			stat.setString(2, companyposition);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				
				job.setId(rs.getInt(1));
				job.setCompanyid(rs.getInt(2));
				job.setCompanyname(rs.getString(3));
				job.setJobpeople(rs.getString(4));
				job.setWorkadress(rs.getString(5));
				job.setGzjy(rs.getString(6));
				job.setOccupatroninfo(rs.getString(7));
				job.setRecruitmentrequirement(rs.getString(8));
				job.setOther(rs.getString(9));
				job.setState(rs.getInt(10));
				job.setUpdatetime(rs.getDate(11));
				job.setSalary(rs.getString(12));
				job.setCompanyposition(rs.getString(13));
				job.setLinkadress(rs.getString(14));
				job.setProfile(rs.getString("profile"));
				job.setEducationbackground(rs.getString("educationbackground"));
				System.out.println(rs.getString("educationbackground"));
			}
			return job;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public boolean checkregister(String companymail){
		String sql="select companyid from company_table where companymail=?";
		int companyid = 0;
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, companymail);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				companyid=rs.getInt("companyid");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			if(companyid==0){
				return true;		
			}else{
				return false;
			}
	}


}
