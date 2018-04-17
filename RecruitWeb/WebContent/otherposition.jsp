<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/themethree.css"/>
        <link rel="stylesheet" href="css/fsresume.css" />
        <link rel="stylesheet" href="css/showjob.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/rp.css" />
        
       	<style>
       		.move{position: fixed; top: 0px;}
       		.ulok{
    		width: 100%;display: inline-block;
    		}
    		.ulok li {
    		font-family: "microsoft yahei";
    		}
    		.ulok li>a{
    		 color:black;
    		}
       		
       	</style>
    </head>
    <body>
    	<div class="headbody">
    		<div class="bar">
    			<div class="user">
    				
    				
    			</div>
    		</div>
    		<div class="nag">
    			<div style="height: 56px;width: 1000px;margin: 0px auto;">
    				<a href="#">
    				<img  src="img/title.jpg" class="logo"/>
    				</a>
    				<p class="link_to">				
    						<a href="index.jsp">首页</a>
    						<a href="searchindex.jsp">职位搜索</a>
    						<a href="">地区频道</a>					
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	<div class="mainbody">
    		<div class="worktitle">
    			<div style="width: 670px; float: left;">
    			<div class="lftitle">
    				<h1 style="float: left;">	
    					<s:property value="#request.company.companyname" />
    				</h1>			
    			</div>
    				<div style="padding-top: 15px;padding-left: 20px; padding-bottom: 20px;"> 
    				<span><s:property value="#request.company.cpnature"/>   |  <s:property value="#request.company.scale"/>   |  <s:property value="#request.company.companyindustry"/></span><br/>
    				<div style="height: 10px;"></div>
    				<span>公司地址：<s:property value="#request.company.companyadress" /></span>
    				</div>
    			</div>
    			
    		</div> 		
    		<div style="height:20px;"></div>

    		<div class="tftf">
    			<h1 class="ifif">公司简介</h1>
    		
    		
    			
    			<div style="line-height: 50px; font-size: 14px;">
    				
    		   <pre  class="ppee"><s:property value="#request.company.profile" /></pre>

    			</div>
    			
    			
    		</div>
    		<div class="tftf" style="display:inline-block; width:100%;">
    			<h1 class="ifif">该公司所有职位</h1>
				<div class="rli" style="font-size:16px;">
    					<s:iterator value="#request.searchresult" var="m" status="s">
    						<ul class="ulok"<s:if test="#s.even">style="background-color:#fafafa"</s:if>>
    							<li style="float:left;width:335px;"><a href="Showjobindex?jobid=<s:property value="#m.id"/>&companyid=<s:property value="#m.companyid"/>"><s:property value="#m.companyposition" /></a></li>
    							<li style="float:left;width:275px;"><s:property value="#m.gzjy" />|<s:property value="#m.educationbackground" />|招<s:property value="#m.jobpeople" />人</li>
    							<li style="float:left;width:120px;"><s:property value="#m.workadress" /></li>
    							<li style="float:left;width:150px;"><s:property value="#m.salary" /></li>
    							<li style="float:right;width:110px;"><s:date name="#m.updatetime" format="yyyy-MM-dd"/></li>	
    						</ul>
    					</s:iterator>	
    			</div>
    		</div>
    		
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script>
 		$(function(){
 			$(window).scroll(function(){
 				var m=$(this).scrollTop();
 				var t=$(".worktitle").offset().top;

 				if(m>t){
 					$(".worktitle").addClass("move");
 					
 				}
   				if(m<110){
   					$(".worktitle").removeClass("move");
   					
   				}
 					
 			})
 			
 			
 			
 		})
 		
 		
 	</script>
</html>