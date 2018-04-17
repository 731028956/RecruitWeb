package com.recruitmentweb.method;

import java.io.FileOutputStream;
import java.io.OutputStream;

import sun.misc.BASE64Decoder;

public class Base64Test {
	
	 public static String GenerateImage(String imgStr,String path)  
	    {   //���ֽ������ַ�������Base64���벢����ͼƬ  
	        if (imgStr == null) //ͼ������Ϊ��  
	            return null;  
	        BASE64Decoder decoder = new BASE64Decoder();  
	        try   
	        {  
	            //Base64����  
	            byte[] b = decoder.decodeBuffer(imgStr);  
	            for(int i=0;i<b.length;++i)  
	            {  
	                if(b[i]<0)  
	                {//�����쳣����  
	                    b[i]+=256;  
	                }  
	            }  
	            //����jpegͼƬ  
	            String imgFilePath = path+".jpg";//�����ɵ�ͼƬ  
	            OutputStream out = new FileOutputStream(imgFilePath);      
	            out.write(b);  
	            out.flush();  
	            out.close();  
	            return imgFilePath;  
	        }   
	        catch (Exception e)   
	        {  
	            return null;  
	        }  
	    }  
	}  

