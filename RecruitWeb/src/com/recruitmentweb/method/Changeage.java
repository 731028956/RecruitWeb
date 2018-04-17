package com.recruitmentweb.method;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Changeage {
		public Date date() throws Exception{
				Date date;
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				date=sdf.parse(sdf.format(new Date()));
				return date;
				
		}
		public int changing(String birthday) throws Exception{
			int age=0;
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String today=sdf.format(date());
			Date d=sdf.parse(birthday);
			String birday=sdf.format(d);
			System.out.println(today);
			System.out.println(birday);
			int ya=Integer.parseInt(today.substring(0,4));
			int yb=Integer.parseInt(birday.substring(0,4));
			System.out.println(ya);
			System.out.println(yb);
			age=ya-yb;
			if(age>0){
				int Ma=Integer.parseInt(today.substring(5,7));
				int Mb=Integer.parseInt(birday.substring(5,7));
				System.out.println(Ma);
				System.out.println(Mb);
				if(Mb>Ma){
					age=age-1;
				}else if(Mb==Ma){
					int da=Integer.parseInt(today.substring(8));
					int db=Integer.parseInt(birday.substring(8));
					System.out.println(da);
					System.out.println(db);
					if(db>da){
						age=age-1;
					}

				}
			}
			System.out.println(age);
			return age;
	
		}
		public boolean changing(Date olddate) throws Exception{
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String today=sdf.format(date());
			String birday=sdf.format(olddate);
			int ya=Integer.parseInt(today.substring(0,4));
			int yb=Integer.parseInt(birday.substring(0,4));
			if(ya<yb){
				return false;
			}
			int Ma=Integer.parseInt(today.substring(5,7));
			int Mb=Integer.parseInt(birday.substring(5,7));
			if(ya==yb&&Mb>Ma){
				return false;
			}
			int da=Integer.parseInt(today.substring(8));
			int db=Integer.parseInt(birday.substring(8));
			if(ya==yb&&Ma-1==Mb&&da<7){
				return false;
			}
			if(ya==yb&&Mb==Ma&&(db-da<7)){
				System.out.println(da);
				System.out.println(db-da);
				return false;
				
			}
			System.out.println("woeizhixing1");
			return true;
		}
		
}
