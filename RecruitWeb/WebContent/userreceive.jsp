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
    						<a href="">首页</a>
    						<a href="">职位搜索</a>
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
    			<a href="<s:url action="Recruitpage"/>">
    				<span>
    					简历中心
    				</span>	
    			</a>
    			<a href="<s:url action="Sendinfo"/>">
    				<span>
    					我的申请
    				</span>	
    			</a>
    			<a href="www.baidu.com" class="on">
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
    				<h1 style="padding-left: 0px;">企业邀请</h1>
    				
    				<div class="rbox">
			
    					<div class="rli">
    						<s:iterator value="#request.userjob" var="m" status="s">
    						<div class="ulok" style="padding: 15px 20px; border: 1px solid #eee;">
    							<div class="li u1">
    								<a href="Showjobindex?jobid=<s:property value="#m.jobid"/>&companyid=<s:property value="#m.companyid"/>" class="zn"><s:property value="#m.companyposition" /></a>
    								<span class="xz"><s:property value="#m.salary" /></span><br />
    								<a class="gs"><s:property value="#m.companyname" /></a>
    								<span class="dz"><s:property value="#m.workadress" /></span>
    							</div>
    							<div class="li u2">
    								<div class="rq">
    									<label>邀请时间</label>
    									<span><s:date name="#m.updatetime" format="yyyy-MM-dd"/></span>
    								</div>
    								<div class="jl">
    									<label>邀请简历</label>
    									<span><s:property value="#m.resumename" /></span>
    								</div>
    								
    							</div>
    							<div class="li u3">
    								<span class="zn">状态</span>
    								<span class="xz"><s:property value="#m.state" /></span><br />
    								<div id="state">
	    								<span class="gs" id="invite">接受</span>
	    								<span class="dz" id="refuse">拒绝</span>
	    								<input type="hidden" value="<s:property value="#m.id" />" id="pid">
		    						</div>
    								<div id="interview">
	    								<span class="gs">已收到面试邀请</span>
	    								<span class="dz" id="dz">详情</span>
	    								<input type="hidden" id="ointerviewtime" value="<s:date name="#m.interviewtime" format="yyyy-MM-dd"/>">
	    								<input type="hidden" id="ointerviewadress" value="<s:property value="#m.interviewadress"/>">
		    						</div>
    							</div>
    							
    						</div>
    						<!--<div class="ulok" style="background-color:#fafafa;">
    							<li style="float:left;width:200px;"><s:property value="#m.resumename" /></li>
    							<li style="width: 300px;" class="rf">
    								<a href="">修改</a>|
    								<span style="cursor: pointer;" id="delete">删除<span>
    								<input type="hidden" value='<s:property value="#m.userid" />' id="userid"/>
    								<input type="hidden" value='<s:property value="#m.resumename" />' id="resumename"/>
    								
    							</li>
    							
    						</div>-->
    					</s:iterator>
    					</div>
    					
    				</div>
    			</div>
    			<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1">
    			<div class="tipcontent">
	    			<div style="margin">
						<span style="padding-left:36%;">面试时间：</span>  
						<span id="interviewtime"></span>
					</div>
					<div style="padding-top:30px;">
						<span style="padding-left:36%;">面试地点：</span>
						<span id="interviewadress"></span>
						<input type="hidden" id="hidid" name="id">
					</div>
		    			<div class="btntip">
				    				<button class="savetip" type="button">确认</button>
				    				<span class="canceltip">取消</span>
						</div>
	    		</div>
    		</div>
    		<!--<div class="tip" id="tip2">
    			<form method="post" action="Newrecruitpage" method="get">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>请输入新简历的名称</p>
		    			<p style="padding-top: 30px;">
		    				<input type="text" name="resumename" style="height: 30px;    border: 1px solid #ddd;text-align: center;"/>
		    			</p>
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
				    	
						</div>
	    		</div>
	    		</form>
    		</div>-->
    		</div>
    		
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script>
 		$(function(){
			var interviewadress;
			var interviewtime;
 			$("#interview #dz").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");
 				interviewadress=$(this).parent().find("#ointerviewadress").val();
 				interviewtime=$(this).parent().find("#ointerviewtime").val();
 				$("#interviewadress").text(interviewadress);
 				$("#interviewtime").text(interviewtime);
 			})
				$(".ulok").each(function(){
 				if($(this).find(".u3 .xz").text()!="企业直邀(已接受)"){	
 					$(this).find("#interview").css("display","none");
 					
 				}
 				 if($(this).find(".u3 .xz").text()!="企业直邀"){	
 					$(this).find("#state").css("display","none");
 					
 				}
			
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
 			$("#refuse").click(function(){
 				var params = { 
     		           pid:$(this).parent().find("#pid").val()
     		        };
     		
     		$.ajax({  
     		    type: "POST",  
     		    url: "Refusejob", //这里写的是action的名字,设置了namespace会出错  
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
 			$("#invite").click(function(){
 				var params = { 
     		           pid:$(this).parent().find("#pid").val()
     		        };
     		
     		$.ajax({  
     		    type: "POST",  
     		    url: "Invitejob", //这里写的是action的名字,设置了namespace会出错  
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
 			$(".savetip").click(function(){
 				
 				$(".tipbgcolor").css("display","none");
 				$("#tip1").css("display","none");
 				$("#tip2").css("display","none");
 				
 			})
 			if($("#username").text().trim()!=""){
   				$(".login").css("display","none");
   				$("#ulxiala").css("display","block");
   				
   			}
 			
 		})

 	</script>
</html>