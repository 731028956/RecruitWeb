<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page import="com.recruitmentweb.javabean.Resume"%>
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
    		.ulok>li{
    		overflow: hidden;text-overflow: ellipsis;white-space: nowrap;
    		}
    		#huan:hover{
    		cursor:pointer;
    		color:#ff6000;
    		}
    	
    	</style>
    </head>
    <body>
    	<div class="headbody">
    		<div class="bar">
    			<div class="user">
    				<ul id="ulxiala" style="display:block;">
    					<li class="icon1" id="username">	
    						<a><s:property value="#session.user.username"/></a>
    					</li>
    					<li class="icon2"><a href="<s:url action="Recruitpage"/>">简历中心</a></li>
    					<li class="icon2"><a href="<s:url action="Sendinfo"/>">我的申请</a></li>
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
    						<a href="Searchindexinfo?scope=全文&search=&workadress=全国&companyposition=">职位搜索</a>												
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	
    	<div class="mainbody">
    		<div class="left_dh">
    			
    			<a href="<s:url action="Firstresume3"/>">
    				<span>
    					个人信息
    				</span>	
    			</a>
    			<a href="<s:url action="Recruitpage"/>" class="on">
    				<span>
    					简历中心
    				</span>	
    			</a>
    			<a href="<s:url action="Sendinfo"/>">
    				<span>
    					我的申请
    				</span>	
    			</a>
    			<a href="<s:url action="Userreceive"/>">
    				<span>
    					企业直邀
    				</span>	
    			</a>
    			<a href="revisepassword.jsp">
    				<span>
    					密码修改
    				</span>	
    			</a>
    		</div>		

    		<div class="right_dh">
    			<div class="mfbody color" style="padding-bottom: 40px;">
    				<h1 style="padding-left: 0px;">简历中心</h1>
    				<span style="padding-left: 600px;cursor:pointer" id="new">新建简历</span>
    				<div class="rbox">
    					<div class="tit">
    						<ul class="clearfix">
    							<li class="l1 lf">简历名称</li>
    							<li class="l2 rf">操作</li>
    							
    						</ul>
    					</div>
    					
    					<div class="rli">
    					<s:iterator value="#request.resume" var="m" status="s">
    						<ul class="ulok"<s:if test="#s.even">style="background-color:#fafafa"</s:if>>
    							<li style="float:left;width:200px;"><s:property value="#m.resumename" /></li>
    							<li style="width: 300px;" class="rf">
    								<a href="Myrecruitweb?resumename=<s:property value="#m.resumename"/>">修改</a>|
    								<span style="cursor: pointer;" id="delete">删除<span>
    								<input type="hidden" value='<s:property value="#m.userid" />' id="userid"/>
    								<input type="hidden" value='<s:property value="#m.resumename" />' id="resumename"/>
    								
    							</li>
    							
    						</ul>
    					</s:iterator>	
    					</div>
    					
    				</div>
    			</div>
    				<div class="color" style="margin-top: 35px;border-bottom:none;">
    				<h2 style="font-weight: normal;padding-left:10px;">职位推荐 <span style="float:right;font-size:8px;padding-right:52px;" id="huan">换一批</span></h2>
    				
    				<div class="rbox">	
	
    					<div class="rli" style="border: 1px solid #dddddd;border-bottom:none;">
    					<s:if test="">
    					</s:if>
    					<s:iterator value="#request.tuijian" var="m" status="s">
    						<s:if test="#s.index<5">
    						<s:iterator value="top" var="inner"> 
    						<ul class="ulok" style="border-bottom: 1px solid #dddddd;">
    							<li style="float:left;width:220px;padding-left:10px;text-align: left;"><a href="Showjobindex?jobid=<s:property value="#inner.jobid"/>&companyid=<s:property value="#inner.companyid"/>"><s:property value="#inner.companyposition" /></a></li>
    							<li style="float:left;width:200px;text-align: left;"><a href="Otherposition?companyid=<s:property value="#inner.companyid"/>"><s:property value="#inner.companyname" /></a></li>
    							<li style="float:left;width:120px;text-align: left;"><s:property value="#inner.workadress" /></li>
    							<li style="float:left;width:150px;text-align: left;color:#FF6000;font-size:16px;"><s:property value="#inner.salary" /></li>
    							<li style="float:left;width:110px;text-align: left;"><s:date name="#inner.updatetime" format="yyyy-MM-dd"/></li>
    							
    						</ul>
    						</s:iterator>
    						</s:if>
    					</s:iterator>	
    					</div>
    					
    				</div>
    			</div>
    			<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1" style="margin">
    			<form method="post" action="Deleterecruit">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>确认删除此张简历吗？</p>
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
				    	<input type="hidden"  id="deleteuserid" name="deleteuserid"/>
						<input type="hidden"  id="deleteresumename" name="deleteresumename"/>
						</div>
	    		</div>
	    		</form>
    		</div>
    		<div class="tip" id="tip2">
    			<form method="post" action="Newrecruitpage" method="get" id="form1">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>请输入新简历的名称</p>
		    			<p style="padding-top: 30px;">
		    				<input type="text" name="resumename" style="height: 30px;    border: 1px solid #ddd;text-align: center;"id="editresume"/>
		    			</p>
		    			<div class="btntip">
				    				<button class="savetip" type="button" id="submitform1">确认</button>
				    				<span class="canceltip">取消</span>
				    	
						</div>
	    		</div>
	    		</form>
    		</div>
    		</div>
    		
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script>
 		$(function(){
 			$(".ulok #delete").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");
 				var userid=$(this).parent().find("#userid").val();
 				var resumename=$(this).parent().find("#resumename").val();
 				$("#deleteuserid").val(userid);
 				$("#deleteresumename").val(resumename);
 	
 				
 				
 			})

 				
 			$("#new").click(function(){
 			
 				$.ajax({  
 	     		    type: "POST",  
 	     		    url: "Judgerecruitnumber", //这里写的是action的名字,设置了namespace会出错  
 	     		    data: {},  
 	     		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
 	     		    success: function(json){    
 	     		    
 	     		    	$(".tipbgcolor").css("display","block");
 	    				$("#tip2").css("display","block");
 	     		    },  
 	     		    error: function(json){  
 	     		     alert("制作简历不能超过4张");
 	     		     return false;  
 	     		    }  
 	     		 });  
 				
 				
 				
 			})
 			$(".canceltip").click(function(){
 				
 				$(".tipbgcolor").css("display","none");
 				$("#tip1").css("display","none");
 				$("#tip2").css("display","none");
 				
 			})
 			$("#submitform1").click(function(){
 				var params = {  
     		           editresume : $("#editresume").val() //文本框的id名字是typeName  
     		         
     		           
     		        };
 				$.ajax({  
 	     		    type: "POST",  
 	     		    url: "Judgeresumename", //这里写的是action的名字,设置了namespace会出错  
 	     		    data: params,  
 	     		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
 	     		    success: function(json){    
 	     		     //使用这个方法解析json  
 	     		     //result是和action中定义的result变量的get方法对应的  
 	     		     $("#form1").submit();
 	     		    	
 	     		    },  
 	     		    error: function(json){  
 	     		     alert("已有该简历")
 	     		     return false;  
 	     		    }  
 	     		 });  
 				
 				
 				
 			})
 			$("#huan").click(function(){
 				
 				window.location.href=window.location.href;
 				
 			})
 		})

 	</script>
</html>