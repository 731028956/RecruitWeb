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
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    	<link rel="stylesheet" href="css/rp.css" />
    	<style>
    		.ulok{
    		width: 100%;display: inline-block;
    		}
    	
    	
    	</style>
    </head>
    <body>
    	<div class="headbody">
    		<div class="bar">
    			<div class="user">
    				<ul id="ulxiala" style="display:block;">
    					<li class="icon1" id="username">	
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
    						<a href="">首页</a>
    						<a href="">职位搜索</a>
    										
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	
    	<div class="mainbody">
    		<div class="left_dh">
    			
    			<a href="companyhomepage.jsp" >
    				<span>
    					公司信息
    				</span>	
    			</a>
    			<a href="<s:url action="Searchjob"/>">
    				<span>
    					职位中心
    				</span>	
    			</a>
    			<a href="<s:url action="Receive"/>" class="on">
    				<span>
    					收到的简历
    				</span>	
    			</a>
    			<a href="">
    				<span>
    					企业直邀
    				</span>	
    			</a>
    			<a href="">
    				<span>
    					其他
    				</span>	
    			</a>
    		</div>	

    		<div class="right_dh">
    			<div class="mfbody color" style="padding-bottom: 40px; border: none;">
    				<h1 style="padding-left: 0px;">收到的简历</h1>
    				
    				<div class="rbox">
			
    					<div class="rli">
    					
    						<s:iterator value="#request.Receiveresume" var="m" status="s">
    						<div class="ulok" style="padding: 15px 20px; border: 1px solid #eee;">
    							<div class="li u1">
    								<a class="zn"><s:property value="#m.companyposition" /></a>
    								<span class="xz"><s:property value="#m.salary" /></span><br />
    								<a class="gs"><s:property value="#m.user.username" /></a>
    								<span class="dz"><s:property value="#m.user.age" />岁</span>
    								<span class="dz"><s:property value="#m.user.sex" /></span>
    								<span class="dz"><s:property value="#m.user.gzjy" /></span>
    								<span class="dz"><s:property value="#m.user.adress" /></span>
    							</div>
    							<div class="li u2">
    								<div class="rq">
    									<label>申请于</label>
    									<span><s:date name="#m.updatetime" format="yyyy-MM-dd"/></span>
    								</div>
    								<div class="jl">
    									<label>申请简历</label>
    									<span><a href="Showresume?state=<s:property value="#m.state"/>&resumename=<s:property value="#m.resumename"/>&id=<s:property value="#m.id"/>&userid=<s:property value="#m.userid"/>"><s:property value="#m.resumename" /></a></span>
    								</div>
    								
    							</div>
    							<div class="li u3">
    								<span class="zn">状态</span>
    								<span class="xz zx"><s:property value="#m.state" /></span><br />
    								<div id="state">
	    								<span class="gs">邀请</span>
	    								<span class="dz" id="refuse">拒绝</span>
	    								<input type="hidden" value="<s:property value="#m.id" />" id="pid">
		    						</div>
		    						<div id="interview" style="display:none;">
	    								<span class="zn">面试时间</span>
	    								<span ><s:date name="#m.interviewtime" format="yyyy-MM-dd"/></span>
		    						</div>
    							</div>
    							
    						</div>
    					</s:iterator>
    					
    					
    					</div>
    					
    				</div>
    			</div>
    		<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1">
    			<form method="post" action="Interview">
    			<div id="app"> 
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
	    			<div style="margin">
						<span style="padding-left:22%;">面试时间：</span>  
						<el-date-picker v-model="value1" type="date" placeholder="选择日期" name="interviewtime">
						</el-date-picker>
					</div>
					<div style="padding-top:30px;">
						<span style="padding-left:22%;">面试地点：</span>
						<input type="text" style="width: 220px; height: 35px; outline: none;border-color: #ddd;border-radius: 5%;" name="interviewadress">
						<input type="hidden" id="hidid" name="id">
					</div>
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
						</div>
	    		</div>
	    		</div>
	    		</form>
    		</div>
    		
    		</div>
    		
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script src="https://unpkg.com/vue/dist/vue.js"></script>
	<script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
	<script src="js/receiveelment.js"></script>
 	<script>
 		$(function(){
 			$(".gs").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");	
 				var hidid=$(this).parent().find("#pid").val();
 				$("#hidid").val(hidid);
 				
 			})

 				
 			$("#new").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip2").css("display","block");
 				
 				
 			})
 			$(".canceltip").click(function(){
 				
 				$(".tipbgcolor").css("display","none");
 				$("#tip1").css("display","none");
 				$("#tip2").css("display","none");
 				
 			})
 			if($("#username").text().trim()!=""){
   				$(".login").css("display","none");
   				$("#ulxiala").css("display","block");
   				
   			}
 			$(".ulok").each(function(){
 				if($(this).find(".zx").text()=="已拒绝"||$(this).find(".zx").text()=="企业直邀(已拒绝)"){
 					
 					$(this).find("#state").css("display","none");
 					
 				}
			
 			})
 			$(".ulok").each(function(){
 				if($(this).find(".zx").text()=="已邀请"||$(this).find(".zx").text()=="企业直邀(已接受)"||$(this).find(".zx").text()=="企业直邀"){
 					
 					$(this).find("#state").css("display","none");
 					$(this).find("#interview").css("display","block");
 					
 				}
			
 			})
 			
 			$(".dz").click(function(){
 				var params = { 
     		           pid:$(this).parent().find("#pid").val()
     		        };
     		
     		$.ajax({  
     		    type: "POST",  
     		    url: "Refuseresume", //这里写的是action的名字,设置了namespace会出错  
     		    data: params,  
     		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
     		    success: function(json){    
     		    	window.location.reload();
     		    },  
     		    error: function(json){  
     		     
     		     return false;  
     		    }  
     		    });  
     			
 			})
 			
 		})

 	</script>
</html>