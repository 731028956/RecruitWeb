<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/themetwo.css" />
        <link rel="stylesheet" href="css/font.css" />
 		<link rel="stylesheet" href="css/fsresume.css" />
         <style>
        	body{
    		background-color:#f5f5f5;
    	}
        </style>
    </head>
    <body>
    	<div class="headbody">
    		<div class="headbbb">
    			
    			<div class="headbody_iron"></div>
    			
    			<div class="headmfrfont">您正在创建您的第一份简历</div>
    			<div class="headbodfry_font_right">
	    			
	    			<a href="#" style="color: black;">首页</a>
	    			
	    		</div>
    		</div>
			
    	</div>
    	<div class="main">
    		<div class="tiankong"></div>
	    	<div class="fsrhead">
		    		<ul>
			    		<li>
			    			<span>1.个人信息</span>
			    			<span class="widop color01"></span>
			    		</li>
			    		<li>
			    			<span>2.创建简历</span>
			    		 	<span class="widop color01"></span>
			    		</li>
			    		<li>
			    			<span><img src="img/icon_success.jpg" >创建完成</span>
							<span class="widop color01"></span>		    		
			    		</li>
			    		
					</ul>
			
	    	</div>
	    	<h1>创建完成</h1>
	    	<h1><a href="<s:url action="Firstresume3"/>">进入个人页面</a></h1>
	    </div>
 	</body>
</html>