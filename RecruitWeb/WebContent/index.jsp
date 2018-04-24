<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/themethree.css"/>
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/index.css" />
        <title>JSP Page</title>
     
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
    					<li class="icon2"><a href="<s:url action="Sendinfo"/>">我的申请</a></li>
    					<li class="icon2"><a href="Exit">退出账号</a></li>
    				</ul>	
    				<ul id="ulxialacp">
    					<li class="icon1" id="companyname">	
    						<a><s:property value="#session.company.companyname"/></a>
    					</li>
    					<li class="icon2"><a href="<s:url action="Searchjob"/>">职位中心</a></li>
    					<li class="icon2"><a href="<s:url action="Receive"/>">收到的简历</a></li>
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
    	<div class="bg">
    	<div style=" height: 100px;">		
    	</div>
    	<form action="Searchindexinfo" method="get">
    	<div class="mainbody" style="; height: 148px; padding: 0px 0px;">    
    		
    			
    			<div class="mainsearch_index">
    				
    				<ul class="ul_index">
    					<li>
    						全文
    					</li>
    					<li style="display: none;">
    						公司
    					</li>
    					
    				</ul>
    				<div class="inputserch_index"> 
    					<input type="hidden" name="scope" id="scope"/> 
    					<input type="text" name="search"/>
    					
    				</div>
    				<div class="adressselect_index"> 
    					
    				<input type="button" class="area-danxuan"  data-value="" id="bt1" value="全国"/>
    				<input type="hidden" value="南京" name="workadress" id="workadress"/>
    					
    				</div>
    				<div class="searchbuttom_index"> 
    					<input type="hidden" name="companyposition">
    					<input type="submit" value="搜索" id="submit"/>
    					
    				</div>
    				
    			</div>
    	
    		</form>
    		<div class="usermassage" id="um1">
    				<div style="width: 48px;height: 48px;margin: 0px auto; padding-top: 20px;">
    					<img src="img/default_user_90x110.png" style="width: 48px;height: 48px;border-radius: 50%;"/>
    				
    					
    				</div>
    				<div class="left_button_index">
    					<button class="leftbutton_index" type="button"><a href="login.jsp">登录</a></button>
    				
    					<button class="rightbutton_index" type="button"><a href="register.jsp">注册</a></button>
    				</div>
    		
    		
    		</div>
    		<input type="hidden" value='<s:property value="#session.image"/>' id="image">
    		<div style="display: none;" class="usermassage" id="um2">
    				<div style="width: 50px;height: 55px;margin: 0px auto; padding-top: 20px;">
    					<img src="${pageContext.request.contextPath}/img/<s:property value="#session.image"/>?temp=<%=Math.random()%>" style="width: 50px;height: 55px;border-radius: 50%;"/>		
    				</div>
    				<div class="left_button_index">
    					<button class="leftbutton_index" type="button"><a>简历中心</a></button>
    				
    					<button class="rightbutton_index" type="button"><a>快速投递</a></button>
    				</div>
    		
    		
    		</div>
    		<div style="display: none;" class="usermassage" id="um3">
    				<div style="width: 100%;height: 55px;margin: 0px auto; padding-top: 20px;text-align:center;font-size:16px;">
    					<s:property value="#session.company.companyname"/>		
    				</div>
    				<div class="left_button_index">
    					<button class="leftbutton_index" type="button"><a href="<s:url action="Searchjob"/>">职位中心</a></button>
    				
    					<button class="rightbutton_index" type="button"><a>人才查询</a></button>
    				</div>
    		
    		
    		</div>
    	</div>
    	</div>
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script type="text/javascript" src="js/City_data.js"></script>
	<script type="text/javascript" src="js/areadata.js"></script>
	<script type="text/javascript" src="js/auto_area.js"></script>
 	<script>
   		$(function(){
   			
   			if($("#username").text().trim()!=""&&$("#companyname").text().trim()==""){
   				$(".login").css("display","none");
   				$("#ulxiala").css("display","block");
   				$("#ulxialacp").css("display","none");
   				$("#um1").css("display","none");
   				$("#um2").css("display","block");
   				$("#um3").css("display","none");
   				if($("#image").val().trim()==""){
   					$("#um2").find("div").find("img").attr("src","img/default_user_90x110.png");
   				}
		
   			}
   			else if($("#companyname").text().trim()!=""&&$("#username").text().trim()==""){
   				$(".login").css("display","none");
   				$("#ulxiala").css("display","none");
   				$("#ulxialacp").css("display","block");
   				$("#um1").css("display","none");
   				$("#um2").css("display","none");
   				$("#um3").css("display","block");
   				if($("#image").val().trim()==""){
   					$("#um2").find("div").find("img").attr("src","img/default_user_90x110.png");
   				}
		
   			}else{
   				$(".login").css("display","block");
   				$("#ulxiala").css("display","none");
   				$("#ulxialacp").css("display","none");
   				$("#um1").css("display","block");
   				$("#um2").css("display","none");
   				$("#um3").css("display","none");
   			}
   			
   			$(".ul_index").hover(function(){
   				$(this).find("li").css("display","block")
	 			
	 			
   			},function(){
   				$(this).find("li").eq(1).css("display","none")
	
   			})
   		
   			$(".ul_index").find("li").eq(1).click(function(){
   				var a=$(".ul_index").find("li").eq(1).text();
   				var b=$(".ul_index").find("li").eq(0).text();
   				$(".ul_index").find("li").eq(1).text(b);
   				$(".ul_index").find("li").eq(0).text(a);
   				a=b;
   				$(".ul_index").find("li").eq(1).css("display","none")

   			})
   			$("#submit").click(function(){
   				$("#workadress").val($("#bt1").val())
   				$("#scope").val($(".ul_index").find("li").eq(0).text().trim())
   				
   			})
   			
   			
   		})
 	
 	
 	</script>
</html>