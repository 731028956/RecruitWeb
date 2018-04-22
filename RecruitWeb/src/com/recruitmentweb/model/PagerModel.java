package com.recruitmentweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PagerModel {
	public Connection conn;
	public PreparedStatement stat;
	public PagerModel(){
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
	//��ҳȫ���޵�ַ�ĸ���
	public int countall(){
		int count=0;
		String sql="select count(*) from company_job WHERE state=1";
		try {
			stat=conn.prepareStatement(sql);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
		
		
	}
	//��ҳȫ���е�ַ�ĸ���
	public int countworkadress(String workadress){
		int count=0;
		String sql="select count(*) from company_job where workadress=? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, workadress);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
		
		
	}
	//��ҳ�й�˾�޵�ַ
	public int countallcp(String search){
		int count=0;
		String sql="select count(*) from company_job where companyname like ? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, search);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
		
		
	}
	//�й�˾�е�ַ
	public int countworkadresscp(String search ,String workadress){
		int count=0;
		String sql="select count(*) from company_job where companyname like ? AND workadress=?  AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, search);
			stat.setString(2, workadress);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//ȫ������������
	public int countsearchall(String search){
		int count=0;
		String sql="select count(*) from company_job where (companyname like ? or companyposition like ?) AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+search+"%");
			stat.setString(2, "%"+search+"%");
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//ȫ�ļӵ�ַ����
	public int countsearchandadress(String search,String workadress){
		int count=0;
		String sql="select count(*) from company_job where (companyname like ? or companyposition like ?) AND workadress=? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+search+"%");
			stat.setString(2, "%"+search+"%");
			stat.setString(3, workadress);	
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//��˾���͹�˾ְλ����
	public int countsearchandcompanyposition(String search,String companyposition){
		int count=0;
		String sql="select count(*) from company_job where companyname like ? AND companyposition like ? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+search+"%");
			stat.setString(2, "%"+companyposition+"%");
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//��˾����˾��ְַλ
	public int countsearchcompanypositionadress(String search,String companyposition,String workadress){
		int count=0;
		String sql="select count(*) from company_job where companyname like ? AND companyposition like ? AND workadress=? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+search+"%");
			stat.setString(2, "%"+companyposition+"%");
			stat.setString(3, workadress);	
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//ְλ����
	public int countcompanyposition(String companyposition){
		int count=0;
		String sql="select count(*) from company_job where  companyposition like ? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+companyposition+"%");	
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//��ַ+ְλ
	public int countcompanypositionadress(String companyposition,String workadress){
		int count=0;
		String sql="select count(*) from company_job where  companyposition like ? AND workadress=? AND state=1";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%"+companyposition+"%");
			stat.setString(2, workadress);	
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//�յ��ļ���
	public int receive(int companyid){
		int count=0;
		String sql="select count(*) from sendresume_job where companyid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, companyid);
		
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//�û����͵ļ���
	public int sendinfo(int userid){
		int count=0;
		String sql="select count(*) from sendresume_job where userid=? and state not like ?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2, "%��ҵֱ��%");
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//��ҵ����
	public int Userreceive(int userid){
		int count=0;
		String sql="select count(*) from sendresume_job where userid=? and state like ?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, userid);
			stat.setString(2, "%��ҵֱ��%");
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	//�Ƽ���ҵ�˲�
	public int  Fromreceive(int companyid){
		int count=0;
		String sql="SELECT  count(*)"
				+ "FROM jobintent_table JOIN companyjob_table JOIN user_table "
				+ "ON jobintent_table.workplace=companyjob_table.workadress  AND jobintent_table.userid= user_table.userid where"
				+ " (companyjob_table.companyposition like CONCAT(?,jobintent_table.ExpectPosition,?))and companyjob_table.companyid=?";  
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, "%");
			stat.setString(2, "%");
			stat.setInt(3, companyid);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
				return count;
			}
			return 0;  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
}
