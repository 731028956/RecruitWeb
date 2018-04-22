package com.recruitmentweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.recruitmentweb.javabean.Company;
import com.recruitmentweb.javabean.Job;


public class SearchModel {
	public Connection conn;
	public PreparedStatement stat;
	public SearchModel(){
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
	
//	public ArrayList searchemptyworkplaceindex(String workadress,int pageSize, int pageNow){
//		ArrayList j=new ArrayList();
//		String sql=null;
//		int i = 0;
//		int count=0;
//		if(workadress.equals("全国")){
//		sql="select * from company_job where state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
//		PagerModel pm=new PagerModel();
//		count=pm.countall();
//		i=0;
//		}else{
//			sql="select * from company_job where workadress=? AND state=1 order by id desc limit "+(pageNow*pageSize-pageSize)+","+pageSize;
//			PagerModel pm=new PagerModel();
//			count=pm.countworkadress(workadress);
//			i=1;
//		}
//		try {
//		
//			stat=conn.prepareStatement(sql);
//			if(i==1){
//			stat.setString(1, workadress);
//			}
//			ResultSet rs=stat.executeQuery();
//			while(rs.next()){
//				Job job=new Job();
//				job.setId(rs.getInt(1));
//				job.setCompanyid(rs.getInt(2));
//				job.setCompanyname(rs.getString(3));
//				job.setJobpeople(rs.getString(4));
//				job.setWorkadress(rs.getString(5));
//				job.setGzjy(rs.getString(6));
//				job.setOccupatroninfo(rs.getString(7));
//				job.setRecruitmentrequirement(rs.getString(8));
//				job.setOther(rs.getString(9));
//				job.setState(rs.getInt(10));
//				job.setUpdatetime(rs.getDate(11));
//				job.setSalary(rs.getString(12));
//				job.setCompanyposition(rs.getString(13));
//				job.setLinkadress(rs.getString(14));
//				job.setProfile(rs.getString("profile"));
//				job.setEducationbackground(rs.getString("educationbackground"));
//				j.add(job);		
//			}
//			j.add(count);
//			return j;
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		}
//
//	}
//	public ArrayList searchcompanyindex(String workadress,String search){
//		ArrayList j=new ArrayList<>();
//		int i=0;
//		int count=0;
//		String sql=null;
//		if(workadress.equals("全国")){
//			sql="select * from company_job where companyname like ? AND state=1";
//			PagerModel pm=new PagerModel();
//			count=pm.countallcp(search);
//			i=0;
//
//		}else{
//			sql="select * from company_job where companyname like ? AND workadress=?  AND state=1";
//			PagerModel pm=new PagerModel();
//			count=pm.countworkadresscp(search, workadress);	
//			System.out.println(workadress);
//			i=1;
//		}
//		try {
//			stat=conn.prepareStatement(sql);
//			stat.setString(1, "%"+search+"%");
//			if(i==1){				
//				stat.setString(2, workadress);
//			}
//			ResultSet rs=stat.executeQuery();
//			while(rs.next()){
//				Job job=new Job();
//				job.setId(rs.getInt(1));
//				job.setCompanyid(rs.getInt(2));
//				job.setCompanyname(rs.getString(3));
//				job.setJobpeople(rs.getString(4));
//				job.setWorkadress(rs.getString(5));
//				job.setGzjy(rs.getString(6));
//				job.setOccupatroninfo(rs.getString(7));
//				job.setRecruitmentrequirement(rs.getString(8));
//				job.setOther(rs.getString(9));
//				job.setState(rs.getInt(10));
//				job.setUpdatetime(rs.getDate(11));
//				job.setSalary(rs.getString(12));
//				job.setCompanyposition(rs.getString(13));
//				job.setLinkadress(rs.getString(14));
//				job.setProfile(rs.getString("profile"));
//				job.setEducationbackground(rs.getString("educationbackground"));
//				j.add(job);
//	
//			}
//			j.add(count);
//			return j;
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return null;
//		}
//		
//		
//		
//	}
	public ArrayList<Job> searchallindex(String workadress,String search){
		ArrayList<Job> j=new ArrayList<>();
		int i=0;
		String sql=null;
		if(workadress.equals("全国")){
			sql="select * from company_job where (companyname like ? or companyposition like ?) AND state=1";
			i=0;
		}
		else{
			sql="select * from company_job where(companyname like ? or companyposition like ?) AND workadress=? AND state=1";
			i=1;
		}
	
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+search+"%");
			stat.setString(2, "%"+search+"%");
			if(i==1){
				stat.setString(3, workadress);	
			}
			
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				Job job=new Job();
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
				j.add(job);
			}
			return j;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
	}
	public ArrayList searchallindex(String workadress,String search,String companyposition,String scope,int pageSize, int pageNow){
		ArrayList j=new ArrayList();
		PagerModel pm=new PagerModel();
		int t = 1;
		String sql=null;
		int count=0;
		System.out.println(!search.isEmpty());
		System.out.println(workadress);	
		if(search.isEmpty()&&companyposition.isEmpty()){
			if(workadress.equals("全国")){
				 t=1;
				 System.out.println("33");
			}else if(!workadress.equals("全国")){ 
				t=2;
				System.out.println("13");
			}
		}
		 if(!search.isEmpty()){
			if(companyposition.isEmpty()){
				if(scope.equals("全文")){
					if(workadress.equals("全国")){
						t=3;
						 System.out.println("332");
					}else if(!workadress.equals("全国")){ 
						t=4;
					 System.out.println("334");
					}
				}else if(scope.equals("公司")){
					if(workadress.equals("全国")){
						t=5;
						 System.out.println("335");
					}else if(!workadress.equals("全国")){ 
						
						t=6;
						System.out.println("336");
					}
				}
			}else if(!companyposition.isEmpty()){
				if(scope.equals("全文")){
					if(workadress.equals("全国")){
						t=7;
						 System.out.println("337");
					}else  if(!workadress.equals("全国")){ 
						
						t=8;
						System.out.println("338");
					}
				}
				else if(scope.equals("公司")){
					if(workadress.equals("全国")){
						t=7;
						System.out.println("3311");
					}else if(!workadress.equals("全国")){ 
						t=8;
						System.out.println("3312");
					}
						
				}
			}
	
		}
		else if(search.isEmpty()){
//			if(companyposition.isEmpty()){
//				if(scope.equals("全文")){
//					if(workadress.equals("全国")){
//						t=9;
//					}else
//						t=10;
//				}else if(scope.equals("公司")){
//					if(workadress.equals("全国")){
//						t=11;
//					}else
//						t=12;
//				}
//			}
			if(!companyposition.isEmpty()){		
					if(workadress.equals("全国")){
						t=9;
						 System.out.println("339");
					}else if(!workadress.equals("全国")){ 
						
						t=10;	
						System.out.println("3310");
					}
			}
		}
		
		try {
			switch(t){
				case 1:
					sql="select * from company_job where state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countall(); 
					stat=conn.prepareStatement(sql);
					break;
				case 2:
					sql="select * from company_job where workadress=? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countworkadress(workadress);
					stat=conn.prepareStatement(sql);
					stat.setString(1, workadress);
					break;
				case 3:
					sql="select * from company_job where (companyname like ? or companyposition like ?) AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countsearchall(search);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+search+"%");
					stat.setString(2, "%"+search+"%");
					break;
				case 4:
					sql="select * from company_job where (companyname like ? or companyposition like ?) AND workadress=? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countsearchandadress(search, workadress);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+search+"%");
					stat.setString(2, "%"+search+"%");
					stat.setString(3, workadress);	
					break;
				case 5:
					sql="select * from company_job where companyname like ? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countallcp(search);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+search+"%");
					break;
				case 6:
					sql="select * from company_job where companyname like ? AND workadress=? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countworkadresscp(search, workadress);	
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+search+"%");
					stat.setString(2, workadress);	
					break;
				case 7:
					sql="select * from company_job where companyname like ? AND companyposition like ? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countsearchandcompanyposition(search, companyposition);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+search+"%");
					stat.setString(2, "%"+companyposition+"%");
					break;
				case 8:
					sql="select * from company_job where companyname like ? AND companyposition like ? AND workadress=? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countsearchcompanypositionadress(search, companyposition, workadress);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+search+"%");
					stat.setString(2, "%"+companyposition+"%");
					stat.setString(3, workadress);	
					break;
				case 9:
					sql="select * from company_job where  companyposition like ? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countcompanyposition(companyposition);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+companyposition+"%");
					break;
				case 10:
					sql="select * from company_job where  companyposition like ? AND workadress=? AND state=1 order by id desc  limit "+(pageNow*pageSize-pageSize)+","+pageSize;
					count=pm.countcompanypositionadress(companyposition, workadress);
					stat=conn.prepareStatement(sql);
					stat.setString(1, "%"+companyposition+"%");
					stat.setString(2, workadress);	
					break;	
				default:
					break;
		}
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				Job job=new Job();
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
				j.add(job);
			}
				j.add(count);
			return j;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
}