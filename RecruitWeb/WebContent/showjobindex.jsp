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
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
       	<style>
       		.move{position: fixed; top: 0px;}
       		#resumeul>li{
 				display: none;
 				
 			}
			#resumeul:hover .moo{
 				display: block;
 				
 			}
 			
 			.moo{
 			height: 30px; 
 			border: 1px solid #DDDDDD;
 			line-height:30px;
 			}
       		
       	</style>
    </head>
    <body>
    	<div class="headbody">
    		<div class="bar">
    			<div class="user">
    				<span class="login"><a href="login.jsp">登录</a>/<a href="register.jsp">注册</a></span>
    				<ul id="ulxiala">
    					<li class="icon1" id="username">	
    						<a><s:property value="#session.user.username"/></a>
    					</li>
    					<li class="icon2"><a href="<s:url action="Recruitpage"/>">简历中心</a></li>
    					<li class="icon2"><a>我的申请</a></li>
    					<li class="icon2"><a href="Exit">退出账号</a></li>
    				</ul>	
    				<ul id="ulxialacp">
    					<li class="icon1" id="companyname">	
    						<a><s:property value="#session.company.companyname"/></a>
    					</li>
    					<li class="icon2"><a href="<s:url action="Searchjob"/>">职位中心</a></li>
    					<li class="icon2"><a>收到的简历</a></li>
    					<li class="icon2"><a href="Exit">退出账号</a></li>
    				</ul>	
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
    								
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	<div class="mainbody">
    		<div class="worktitle">
    			<div style="width: 670px; float: left;">
    			<div class="lftitle">
    				<h1 style="float: left;">	
    					<s:property value="#request.job.companyposition"/>
    				</h1>
    				<span class="h1place">工作地址:<s:property value="#request.job.workadress"/></span>
    				<strong><s:property value="#request.job.salary"/></strong>
    			</div>
    				<div style="padding-top: 15px;padding-left: 20px;">
    				<span><s:property value="#request.job.companyname"/></span>
    				<span style="margin-left: 340px"><a href="Otherposition?companyid=<s:property value="#request.companyid"/>">该公司所有职位</a></span>
    				</div>
    				<div style="padding-top: 15px;padding-left: 20px; padding-bottom: 20px;"> 
    				<span><s:property value="#request.company.cpnature"/>   |  <s:property value="#request.company.scale"/>   |  <s:property value="#request.company.companyindustry"/></span>
    				</div>
    			</div>
    			<div style="width: 300px; float: right;display: inline-block;">
    				
    				<div class="sq" id="sq">
    					申请职位
    				</div>
    				<div class="stop" style="display:none">
    					停止招聘   				
    				</div>
    				
    			</div>
    		</div> 		
    		<div style="height:20px;"></div>
    		<div  class="mfmf">
    				<p>
    				
    					<s:property value="#request.job.gzjy"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招1人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;03-13发布
    					
    				</p>	
    		</div>
    		<div class="tftf">
    			<h1 class="ifif">职位信息</h1>
    		
    		
    			<p>岗位职责</p>
    			<div style="line-height: 50px; font-size: 14px;">
    				
    		   <pre  class="ppee"><s:property value="#request.job.occupatroninfo"/></pre>
				<p>岗位要求：</p><pre  class="ppee"><s:property value="#request.job.recruitmentrequirement"/></pre>
				<p>其他</p>
    			<pre  class="ppee"><s:property value="#request.job.other"/></pre>
    			
    			
    		</div>
    		<div class="tftf">
    			<h1 class="ifif">联系方式</h1>
				<div>
					上班地址：<s:property value="#request.job.linkadress"/>
					
				</div>
    		</div>
    		<div class="tftf">
    			<h1 class="ifif">公司信息</h1>
				<div>
					<span><pre  class="ppee"><s:property value="#request.company.profile"/></pre></span>		
				</div>
    		</div>
    	</div>
    	<input type="hidden" value='<s:property value="#request.job.state"/>' id="state"/>
    	<div class="tipbgcolor"></div>
    	<div class="tip">
    			<div class="stip">提示</div>
    			<form method="post" name="form1"> 
    				
    				<input type="hidden" value='<s:property value="#request.job.id"/>' id="jobid"/>
    				<input type="hidden"  id="resumeid"/>
		    		<div class="tipcontent" style="position: relative;">
			    			<p >选择提交的简历</p>
			    			<div style="height: 70px;" id="getzhi"> 
			    				<ul style="position: absolute;top: 60px;left: 180px;padding-top: 20px;z-index: 10;background: white;" id="resumeul">
			    			 	<span style="border: 1px solid #DDDDDD;display: block;"><input type="text" style="height: 30px;background-color: white;border:none;width: 200px;" disabled="disabled" id="resumetext">
			    			 	<img src="img/font-8193.png" style="width: 36px;height: 18px;border-left: 1px solid #DDDDDD;margin-top: 10px;"></img></span>    			 	
	
			    				</ul>
			    			</div>
			    			<div class="btntip" style="padding-bottom: 40px;">					
					    	<button class="savetip" type="button" id="submitform1">确认</button>
					    	<span class="canceltip">取消</span>
							</div>
		    		</div>
	    		</form>
    		
    	</div>
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script>
 		$(function(){
 			var i=0;
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
 			var state=$("#state").val();
				if(state==0){
					$(".stop").css("display","block");
					$(".sq").css("display","none");	
				}
				if($("#username").text().trim()!=""&&$("#companyname").text().trim()==""){
	   				$(".login").css("display","none");
	   				$("#ulxiala").css("display","block");
	   				$("#ulxialacp").css("display","none");
	   				$("#um1").css("display","none");
	   				$("#um2").css("display","block");
	   				$("#um3").css("display","none");
			
	   			}
	   			else if($("#companyname").text().trim()!=""&&$("#username").text().trim()==""){
	   				$(".login").css("display","none");
	   				$("#ulxiala").css("display","none");
	   				$("#ulxialacp").css("display","block");
	   				$("#um1").css("display","none");
	   				$("#um2").css("display","none");
	   				$("#um3").css("display","block");
	   				
			
	   			}else{
	   				$(".login").css("display","block");
	   				$("#ulxiala").css("display","none");
	   				$("#ulxialacp").css("display","none");
	   				$("#um1").css("display","block");
	   				$("#um2").css("display","none");
	   				$("#um3").css("display","none");
	   			}
				$("#submitform1").click(function(){
	 				var params = {  
	     		           resumeid : $("#resumeid").val(),   
	     		           jobid:$("#jobid").val()
	     		           
	     		        };
	 				
	 				if($("#resumeid").val()==""){
	 					alert("请选择简历")
	 				}else{
	 					$.ajax({  
		 	     		    type: "POST",  
		 	     		    url: "Sendrecruit", 
		 	     		    data: params,  
		 	     		    dataType:"text", 
		 	     		    success: function(json){    
		 	     		     
		 	     		    	alert("已申请,7天之内无法再次申请");
		 	     		    	location.href=window.location.href;
		 	     		    	
		 	     		    },  
		 	     		    error: function(json){  
		 	     		  	alert("已申请过,7天之内无法再次申请");
		 	     		     return false;  
		 	     		    }  
		 	     		 });  
	 				}
	 				
	 				
	 				
	 				
	 			})

 			$("#sq").click(function(){
 				if($("#username").text().trim()==""){	
 					alert("请先登录，若没有账号，请先注册！")
 					location.href="login.jsp";
 				}
 				else{
 					$(".tipbgcolor").css("display","block");
 	     			$(".tip").css("display","block");	
 	     			if(i==0){
 	     			$.ajax({  
 	 	     		    type: "POST",  
 	 	     		    url: "Getresumeindex", 
 	 	     		    data: {},  
 	 	     		    dataType:"text", 
 	 	     		    success: function(json){         		  
 	 	     		     var obj = $.parseJSON(json); 
 	 	     			  $.each(obj,function(key,val){
 	 	     				  var li = document.createElement("li"); 
 	 	     				  var input=document.createElement("input");
 	 	     				  input.setAttribute("type", "hidden");
 	 	     				  input.setAttribute("value", key);
 	 	     				  li.innerHTML = obj[key]; 
 	 	     				  document.getElementById("resumeul").appendChild(li).appendChild(input);
 	 	     				  $("#resumeul").find("li").addClass("moo"); 				  
 	 	     			});
 	 	     				i++;
 	 	     			
 	 	     		    },  
 	 	     		    error: function(json){  
 	 	     		     alert("您还没有创建简历 请先创建简历");
 	 	     		     location.href="Recruitpage";
 	 	     		     i++;
 	 	     		     return false;  
 	 	     		    }  
 	 	     		 });  	
 	     			}
 				}
 			$('#resumeul').on('click', '.moo' ,function(){
 	     			 $("#resumetext").val($(this).text())
 	     			 $("#resumeid").val($(this).find("input").val())
 	     			
 	     	});
 	     	$('#resumeul').on("mouseover mouseout", '.moo' ,function(event	){
 	     				if(event.type == "mouseover"){
 	     				 $(this).css("color","#ff6000");
 	     				 }else if(event.type == "mouseout"){
 	     					 $(this).css("color","black");
 	     				 }	
 	 	    });
 			$(".canceltip").click(function(){
					changecsstip();
			})
			function changecsstip(){
				$(".tipbgcolor").css("display","none");
     			$(".tip").css("display","none");		
			}
 					
		
 			})
 		})
 	</script>
</html>