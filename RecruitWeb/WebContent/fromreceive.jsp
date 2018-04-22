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
    	<link rel="stylesheet" type="text/css" href="css/zxf_page.css"/>
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
    			<a href="<s:url action="Receive"/>" >
    				<span>
    					收到的简历
    				</span>	
    			</a>
    			<a href="" class="on">
    				<span>
    					人才推荐
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
    				<h1 style="padding-left: 0px;">为您推荐的人才和信息</h1>
    				
    				<div class="rbox">
			
    					<div class="rli">
    					
    						<s:iterator value="#request.Tuijian" var="m" status="s">
    						<div class="ulok" style="padding: 15px 20px; border: 1px solid #eee;">
    							<div class="li u1">
    								<a class="zn"><s:property value="#m.companyposition" /></a>
    								<span class="xz"><s:property value="#m.salary" /></span><br />
    								<a class="gs"><s:property value="#m.user.username" /></a>
    								<span class="dz"><s:property value="#m.user.age" />岁</span>
    								<span class="dz"><s:property value="#m.user.sex" /></span>
    								<span class="dz"><s:property value="#m.user.gzjy" /></span>
    								<span class="dz"><s:property value="#m.workadress" /></span>
    							</div>
    							<div class="li u2">
    								<div class="rq">
    									<label>推荐简历</label>
    									<span><s:date name="#m.updatetime" format="yyyy-MM-dd"/></span>
    								</div>
    								<div class="jl">
    								
    									<span><a href="Showresume?state=<s:property value="#m.state"/>&resumename=<s:property value="#m.resumename"/>&userid=<s:property value="#m.userid"/>"><s:property value="#m.resumename" /></a></span>
    								</div>
    								
    							</div>
    							<div class="li u3">
    								<span class="zn">状态</span>
    								<span class="xz zx"><s:property value="#m.state" /></span><br />
    								<div id="state">
	    								<span class="gs">邀请</span>
	    								<input type="hidden" value="<s:property value="#m.jobid"/>" id="jobid">
	    								<input type="hidden" value="<s:property value="#m.userid"/>" id="userid">
	    								<input type="hidden" value="<s:property value="#m.resumename"/>" id="resumename">
		    						</div>
		    						<div id="interview" style="display:none;">
	    								<span class="zn">面试时间</span>
	    								<span ><s:date name="#m.interviewtime" format="yyyy-MM-dd"/></span>
		    						</div>
    							</div>
    							
    						</div>
    					</s:iterator>
    					
    					
    					</div>
    						<s:set var="page" value="#session.pagefromreceive"/>  
    		<div class="zxf_pagediv">
                <a href="Fromreceive?pageNow=1" class="nextbtn">首页</a>  
                  
                <s:if test="#page.hasPre">  
                    <a href="Fromreceive?pageNow=<s:property value="#page.pageNow-1"/>"class="nextbtn">上一页</a>  
                </s:if>  
                <s:else>  
                    <a href="Fromreceive?pageNow=1" class="nextbtn" style="background-color: #dddddd;">上一页</a>  
               		<a href="Fromreceive?pageNow=<s:property value="#page.pageNow"/>"/></a> 
                </s:else>  
                	<s:if test="#page.hasPre&&#page.hasNext">
					<a href="Fromreceive?pageNow=<s:property value="#page.pageNow-1"/>" class="zxfPagenum"><s:property value="#page.pageNow-1"/></a>     
					<a href="Fromreceive?pageNow=<s:property value="#page.pageNow"/>" class="current"><s:property value="#page.pageNow"/></a> 
					<a href="Fromreceive?pageNow=<s:property value="#page.pageNow+1"/>" class="zxfPagenum"><s:property value="#page.pageNow+1"/></a>      
                	</s:if>
                <s:if test="#page.hasNext">  
                    <a href=" Fromreceive?pageNow=<s:property value="#page.pageNow+1"/>" class="nextbtn">下一页</a>  
                </s:if>  
                <s:else>  
                    <a href="Fromreceive?pageNow=<s:property value="#page.totalPage"/>" class="nextbtn" style="background-color: #dddddd;">下一页</a>  
               		<a href="Fromreceive?pageNow=<s:property value="#page.pageNow"/>" class="current"><s:property value="#page.pageNow"/></a> 
                </s:else>  
                 <span id="totalPage">共 <s:property value="#page.totalPage"/>页</span>
                	
                	
                
                <a href="Fromreceive?pageNow=<s:property value="#page.totalPage"/>" class="nextbtn">尾页</a>  
  				<span>到<input type="text" id="page" class="zxfinput">页</span>
  				<a  href="#"  class="nextbtn" id="intentpage">确定</a>
  				 
 		 </div>
    				</div>
    			</div>
    		<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1">
    			<form method="post" action="Interviewcompany">
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
						<input type="hidden" id="hidid" name="jobid">
						<input type="hidden" id="hiduserid" name="userid">
						<input type="hidden" id="hidresumename" name="resumename">
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
 			$("#intentpage").click(function(){
				var page=$("#page").val();	
				if(page>=<s:property value="#page.totalPage"/>){
					page=<s:property value="#page.totalPage"/>;
				}
				if(page<=1){
					page=1;	
				}
				
				$(this).attr("href","Fromreceive?pageNow="+page+"")
				
			})
 			$(".gs").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");	
 				var hidjobid=$(this).parent().find("#jobid").val();
 				var hidresumename=$(this).parent().find("#resumename").val()
 				var hiduserid=$(this).parent().find("#userid").val();
 				$("#hidid").val(hidjobid);
 				$("#hiduserid").val(hiduserid);
 				$("#hidresumename").val(hidresumename);
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
 				if($(this).find(".zx").text()=="已拒绝"){
 					
 					$(this).find("#state").css("display","none");
 					
 				}
			
 			})
 			$(".ulok").each(function(){
 				if($(this).find(".zx").text()=="已邀请"){
 					
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