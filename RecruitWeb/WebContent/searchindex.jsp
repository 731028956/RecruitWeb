<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/themethree.css"/>
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/index.css" />
        <link rel="stylesheet" href="css/searchindex.css" />
        <link rel="stylesheet" href="css/rp.css" />
        <link rel="stylesheet" type="text/css" href="css/zxf_page.css"/>
        <title>JSP Page</title>
        <style>
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
    				<span class="login"><a href="login.jsp">登录</a>/<a href="regirster.jsp">注册</a></span>
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
    				<a href="index.jsp">
    				<img  src="img/title.jpg" class="logo"/>
    				</a>
    				<p class="link_to">				
    						<a href="index.jsp">首页</a>
    						<a href="Searchindexinfo?scope=全文&search=&workadress=全国&companyposition=">职位搜索</a>												
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	
    	<div style="height: 20px;"></div>
    	<form action="Searchindexinfo" method="get">
    	<div style="border: 1px solid black;background-color: #474861;padding: 10px 0px;"class="mainbody">
    		<ul class="searchul_sindex">
    			<li style="cursor: pointer;" >
    				<div class="searchtext_sindex" style="float: left;" id="getscope">
    					<s:property value="scope"/>
    					
    				</div>
    				<div style="float: left;display: none;" class="searchtext_sindex" id="min"> 
    					公司
    					
    				</div><br>
    				<input type="text" name="search" placeholder="请输入关键字" value='<s:property value="search"/>'/>
    				
    				
    			</li>
    			<li>
    				<div class="searchtext_sindex">
    					工作地点
    					
    				</div>
    				<input type="text" class="area-danxuan" value='<s:property value="workadress"/>' data-value="" name="workadress" style="cursor: pointer;" id="workadress"/>
    				
    			</li>
    			<li>
    				<div class="searchtext_sindex">
    					职业
    					
    				</div>
    				<input type="text" name="companyposition" value='<s:property value="companyposition"/>'/>
    				
    				
    			</li>
    			<li style="width: 125px;border-right: black 1px solid;border-left: none;">
    				<input type="submit" value="搜  索" class="serchbtn_sindex" id="submit"/>
    			</li>
    		</ul>
    		
    		<div style="padding-left: 20px; color: white;padding-top: 2px;">
    			
    			
    		</div>
    		 <input  name="scope" type="hidden" id="scope" value='<s:property value="scope"/>'/>
    		
    		
    	</div>
    	</form>
    	<div style="margin: 0px auto;width: 1000px;">
    	<div style="height: 5px;"></div>
    	
    		<div class="mfbody color" style="padding-bottom: 40px;">
    				
    				<div class="rbox">
    					<div class="tit">
    						<ul class="clearfix">
    							<li class="lf" style="width: 335px;">职位名称</li>
    							<li class="lf" style="width: 275px;">公司名</li>
    							<li class="lf" style="width: 120px;">工作地点</li>
    							<li class="lf" style="width: 150px;">薪资</li>
    							<li class="rf" style="width: 110px;">发布时间</li>
    							
    						</ul>
    					</div>
    					
    					<div class="rli">
    					<s:iterator value="#request.searchresult" var="m" status="s">
    						<ul class="ulok"<s:if test="#s.even">style="background-color:#fafafa"</s:if>>
    							<li style="float:left;width:335px;"><a href="Showjobindex?jobid=<s:property value="#m.id"/>&companyid=<s:property value="#m.companyid"/>"><s:property value="#m.companyposition" /></a></li>
    							<li style="float:left;width:275px;"><a href="Otherposition?companyid=<s:property value="#m.companyid"/>"><s:property value="#m.companyname" /></a></li>
    							<li style="float:left;width:120px;"><s:property value="#m.workadress" /></li>
    							<li style="float:left;width:150px;color:#FF6000;font-size:16px;"><s:property value="#m.salary" /></li>
    							<li style="float:right;width:110px;"><s:date name="#m.updatetime" format="yyyy-MM-dd"/></li>	
    						</ul>
    					</s:iterator>	
    					</div>
    					
    				</div>

    			</div>
    		</div>
    		 <s:set var="page" value="#session.pageinfo"/>  
    		<div class="zxf_pagediv">
                <a href="Searchindexinfo?pageNow=1&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="nextbtn">首页</a>  
                  
                <s:if test="#page.hasPre">  
                    <a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow-1"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>"class="nextbtn">上一页</a>  
                </s:if>  
                <s:else>  
                    <a href="Searchindexinfo?pageNow=1&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="nextbtn" style="background-color: #dddddd;">上一页</a>  
               		<a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="current"><s:property value="#page.pageNow"/></a> 
                </s:else>  
                	<s:if test="#page.hasPre&&#page.hasNext">
					<a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow-1"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="zxfPagenum"><s:property value="#page.pageNow-1"/></a>     
					<a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="current"><s:property value="#page.pageNow"/></a> 
					<a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow+1"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="zxfPagenum"><s:property value="#page.pageNow+1"/></a>      
                	</s:if>
                <s:if test="#page.hasNext">  
                    <a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow+1"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="nextbtn">下一页</a>  
                </s:if>  
                <s:else>  
                    <a href="Searchindexinfo?pageNow=<s:property value="#page.totalPage"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="nextbtn" style="background-color: #dddddd;">下一页</a>  
               		<a href="Searchindexinfo?pageNow=<s:property value="#page.pageNow"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="current"><s:property value="#page.pageNow"/></a> 
                </s:else>  
                 <span id="totalPage">共 <s:property value="#page.totalPage"/>页</span>
                	
                	
                
                <a href="Searchindexinfo?pageNow=<s:property value="#page.totalPage"/>&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>" class="nextbtn">尾页</a>  
  				<span>到<input type="text" id="page" class="zxfinput">页</span>
  				<a  href="#"  class="nextbtn" id="intentpage">确定</a>
  				 
  </div>
    	
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script type="text/javascript" src="js/City_data.js"></script>
	<script type="text/javascript" src="js/areadata.js"></script>
	<script type="text/javascript" src="js/auto_area.js"></script>
	<script>
		$(function(){
			if($(".searchtext_sindex").eq(0).text().trim()==""){
				$(".searchtext_sindex").eq(0).text("全文")				
			}else if($(".searchtext_sindex").eq(0).text().trim()=="公司"){
				$(".searchtext_sindex").eq(1).text("全文")
			} 
			if($("#workadress").val()==""){
				$("#workadress").val("全国")
				
			}
			$("#scope").val($(".searchtext_sindex").eq(0).text().trim());	
			
			$(".searchul_sindex").find("li").eq(0).hover(function(){
				$("#min").css({"display":"block","background-color":"#ff6000","color":"white"})
				var a=$(".searchtext_sindex").eq(0).text().trim();
				var b=$(".searchtext_sindex").eq(1).text().trim();
				$("#min").click(function(){
					$(this).text(a);
					$(".searchtext_sindex").eq(0).text(b);
					$("#min").css("display","none");
					$("#scope").val(b);			
				})
			},function(){
				$("#min").css("display","none");	
			})
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
   			
			$("#intentpage").click(function(){
				var page=$("#page").val();	
				if(page>=<s:property value="#page.totalPage"/>){
					page=<s:property value="#page.totalPage"/>;
				}
				if(page<=1){
					page=1;	
				}
				
				$(this).attr("href","Searchindexinfo?pageNow="+page+"&search=<s:property value="#request.search"/>&scope=<s:property value="#request.scope"/>&workadress=<s:property value="#request.workadress"/>&companyposition=<s:property value="#request.companyposition"/>")
				
			})
		})
		
		
	</script>
</html>