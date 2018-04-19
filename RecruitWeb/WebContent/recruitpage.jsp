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
    					<li class="icon2"><a>我的申请</a></li>
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
    						<a href="">地区频道</a>					
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
    			<div class="mfbody color" style="padding-bottom: 40px;">
    				<h1>简历中心</h1>
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
    			<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1">
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
 		})

 	</script>
</html>