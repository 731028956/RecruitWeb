package com.recruitmentweb.model;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import com.recruitmentweb.javabean.User;
import com.recruitmentweb.javabean.Userimage;
import com.recruitmentweb.method.Changeage;

public class UserModel {
	public Connection conn;
	public PreparedStatement stat;
	public UserModel(){
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
	public User login(User user){
	ResultSet rs=null;	
	String sql="select * from user_table where useremail=? and password=?"; 
	try {
		stat=conn.prepareStatement(sql);
		stat.setString(1, user.getUseremail());
		stat.setString(2, user.getPassword());
		rs=stat.executeQuery();
		while(rs.next()){
			user.setUserid(rs.getInt(1));
			
			return user;
		}
		return null;
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public User selectuserinformation(User user){
		ResultSet rs=null;	
		String sql="select * from user_table where userid=?"; 
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, user.getUserid());
			rs=stat.executeQuery();
			while(rs.next()){
				user.setUseremail(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setUsername(rs.getString(4));
				user.setAge(rs.getInt(5));
				user.setSex(rs.getString(6));
				user.setHometown(rs.getString(7));
				user.setAdress(rs.getString(8));
				user.setUserphone(rs.getString(9));
				user.setBirthday(rs.getDate(10));
				user.setGzjy(rs.getString(11));
				return user;
			}
			return null;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	public boolean usermassage(User user) throws Exception{
		String useremail,birthday;
		String sql;
		useremail=user.getUseremail();
		birthday=user.getBirthday().toLocaleString()+"";
		System.out.println(birthday);
		Changeage cae=new Changeage();
		int age=cae.changing(birthday);
		sql="update user_table set username=?,sex=?,gzjy=?,hometown=?,adress=?,userphone=?,birthday=?,age=? where useremail=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, user.getUsername());
			stat.setString(2, user.getSex());
			stat.setString(3, user.getGzjy());
			stat.setString(4, user.getHometown());
			stat.setString(5, user.getAdress());
			stat.setString(6, user.getUserphone());
			stat.setDate(7, new java.sql.Date(user.getBirthday().getTime()));
			stat.setInt(8, age);
			stat.setString(9, useremail);
			stat.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
			
	}
	public boolean updatepersenpage(User user) throws Exception{
		String birthday=user.getBirthday().toLocaleString()+"";
		System.out.println(birthday);
		Changeage cae=new Changeage();
		int age=cae.changing(birthday);
		String sql="update user_table set username=?,sex=?,birthday=?,hometown=?,age=? where userid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, user.getUsername());
			stat.setString(2, user.getSex());
			stat.setDate(3, new java.sql.Date(user.getBirthday().getTime()));
			System.out.println(user.getHometown());
			stat.setString(4, user.getHometown());
			stat.setInt(5, age);
			stat.setInt(6, user.getUserid());
			stat.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean register(User user){
		String useremail, password;
		String sql;
		useremail=user.getUseremail();
		password=user.getPassword();
		ResultSet rs=null;	
		try {
			sql="insert into user_table(useremail, password) values(?,?)";
			stat=conn.prepareStatement(sql);
			stat.setString(1, useremail);
			stat.setString(2, password);
			stat.executeUpdate();	
			stat=conn.prepareStatement("select * from user_table where useremail=?");
			stat.setString(1, user.getUseremail());
			rs=stat.executeQuery();
			while(rs.next()){
				user.setUserid(rs.getInt(1));
			}
			return true;
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return false;
		}
//	
//		try {
//			
//			sql="insert into user_table(useremail, password) values(?,?)";
//			stat=conn.prepareStatement(sql);
//			stat.setString(1, useremail);
//			stat.setString(2, password);
//			stat.executeUpdate();
//
//			
//			return true;
//		} catch (Exception e) {
////			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return false;
//		}
		
	}
	public void updatemyuser(String username,String sex,Date birthday,String adress,String gzjy,int userid) throws Exception{
		String birthday1=birthday.toLocaleString()+"";
		System.out.println(birthday);
		Changeage cae=new Changeage();
		int age=cae.changing(birthday1);
		String sql="update user_table set username=?,sex=?,birthday=?,adress=?,age=?,gzjy=? where userid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, username);
			stat.setString(2, sex);
			stat.setDate(3, new java.sql.Date(birthday.getTime()));
			stat.setString(4, adress);
			stat.setInt(5, age);
			stat.setString(6, gzjy);
			stat.setInt(7, userid);
			stat.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		
	}
	public Userimage searchimage(Userimage user){
		String	sql="select * from userimage_table where userid=?";
		ResultSet rs=null;
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, user.getUserid());
			rs=stat.executeQuery();
			while(rs.next()){
				
				user.setUserid(rs.getInt(2));
				user.setImagepath(rs.getString(3));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return null;
		}
		return null;
		
	}
	public void userimage(Userimage user){
		String	sql="insert into userimage_table(userid, imagepath) values(?,?)";
		try {
			stat=conn.prepareStatement(sql);
			stat.setInt(1, user.getUserid());
			stat.setString(2, user.getImagepath());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updateuserimage(Userimage user){
		String	sql="update userimage_table set imagepath=? where userid=?";
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, user.getImagepath());
			stat.setInt(2, user.getUserid());
			stat.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean checkregister(String useremail){
		String sql="select userid from user_table where useremail=?";
		int userid = 0;
		try {
			stat=conn.prepareStatement(sql);
			stat.setString(1, useremail);
			ResultSet rs=stat.executeQuery();
			while(rs.next()){
				userid=rs.getInt("userid");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			if(userid==0){
				return true;		
			}else{
				return false;
			}
	}

}
