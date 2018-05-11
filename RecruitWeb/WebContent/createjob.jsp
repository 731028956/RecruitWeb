<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page import="com.recruitmentweb.javabean.Job"%>
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
        <link rel="stylesheet" type="text/css" href="css/SimpleSwitch.css" />
    	<link rel="stylesheet" href="css/rp.css" />
    	<style>
    		.ulok{
    		width: 100%;display: inline-block;
    		}
    		.ulok>li{
    		overflow: hidden;text-overflow: ellipsis;white-space: nowrap;
    		}
    		 .switch-wrapper {
                margin: 0 0 20px;
                font-size: 18px;
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
    					<li class="icon2"><a href="<s:url action="Receive"/>">收到的简历</a></li>
    					<li class="icon2"><a href="Exit">退出账号</a></li>
    				</ul>	
    			</div>    		</div>
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
    			
    			<a href="companyhomepage.jsp">
    				<span>
    					公司信息
    				</span>	
    			</a>
    			<a href="<s:url action="Searchjob"/>"  class="on">
    				<span>
    					职位中心
    				</span>	
    			</a>
    			<a href="<s:url action="Receive"/>">
    				<span>
    					收到的简历
    				</span>	
    			</a>
    			<a href="<s:url action="Fromreceive"/>">
    				<span>
    					企业直邀
    				</span>	
    			</a>
    			<a href="revisecompanypw.jsp">
    				<span>
    					修改密码
    				</span>	
    			</a>
    		</div>	

    		<div class="right_dh">
    			<div class="mfbody color" style="padding-bottom: 40px;">
    				<h1>职位中心</h1>
    				<a  href="job.jsp" style="padding-left: 600px;cursor:pointer" id="new">新建职位</a>
    				<div class="rbox">
    					<div class="tit">
    						<ul class="clearfix">
    							<li class="l1 lf">职位名称</li>
    							<li class="l1 lf" style="padding-left:40px">发布状态</li>
    							<li class="l2 rf">操作</li>
    							
    						</ul>
    					</div>
    					
    					<div class="rli" id="pp">
    					<s:iterator value="#request.job" var="m" status="s">
    						<ul class="ulok"<s:if test="#s.even">style="background-color:#fafafa"</s:if>>
    							<li style="float:left;width:200px;"><s:property value="#m.companyposition" /></li>
    							
    							<li style="float:left;width:200px;margin-left:38px">
    									<span class="switch-wrapper">
								            <label>
								           		 <input type="hidden" value='<s:property value="#m.id" />'  id="id"/>
								                <input type="hidden"  id="oo" name="switchstate"  data-type="simple-switch" value='<s:property value="#m.state" />'/>
								            </label>
		    						  	</span>
    							
    							
    							</li>
    							<li style="width: 300px;" class="rf">
    								<a href="Searchjobinfo?companyposition=<s:property value="#m.companyposition"/>&companyid=<s:property value="#m.companyid"/>">修改</a>|
    								<span style="cursor: pointer;" id="delete">删除<span>
    								<input type="hidden" value='<s:property value="#m.id" />' id="id"/>

    								
    							</li>
    							
    						</ul>
    					</s:iterator>	
    					</div>
    					
    				</div>
    			</div>
    			<div class="tipbgcolor"></div>
	    		<div class="tip" id="tip1">
	    			<form method="post" action="Deleteposition">
	    			<div class="stip">提示</div>
		    		<div class="tipcontent">
			    			<p>确认删除此职位吗？</p>
			    			<div class="btntip">
					    				<button class="savetip" type="submit">确认</button>
					    				<span class="canceltip">取消</span>
					    	<input type="hidden"  id="deleteuserid" name="deleteuserid"/>
							</div>
		    		</div>
		    		</form>
	    		</div>
    		</div>
    		
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script type="text/javascript" src="js/SimpleSwitch.min.js"></script>
        <script type="text/javascript">
            SimpleSwitch.init();
        </script>
 	<script>
 		$(function(){
 			$(".canceltip").click(function(){
 				$("#tip1").css("display","none")
 				$(".tipbgcolor").css("display","none")
 			})
 			$(".ulok #delete").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");
 				var id=$(this).parent().find("#id").val();
 				$("#deleteuserid").val(id);
 			
 	
 			})
 			var a=$("#pp").find(".switch-wrapper").length;

        	for(i=0;i<a;i++){
        		if($("#pp").find(".switch-wrapper").find("._simple-switch-checkbox").eq(i).val()==1){
        		
        			$("#pp").find(".switch-wrapper").find("#oo").eq(i).parent().find("._simple-switch-track").addClass("on")
        		
        		}
        	}
        	$("._simple-switch-track").click(function(){
        		if($(this).parent().find("#oo").val()==0){
        			$(this).parent().find("#oo").val(1);   
        			
        		}
        		else{
        			
        			$(this).parent().find("#oo").val(0); 
        		}
        		var params = {  
        		           switchstate : $(this).parent().find("#oo").val(), //文本框的id名字是typeName  
        		           id:$(this).parent().find("#id").val()
        		           
        		        };
        		
        		$.ajax({  
        		    type: "POST",  
        		    url: "Getjobstate", //这里写的是action的名字,设置了namespace会出错  
        		    data: params,  
        		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
        		    success: function(json){    
        		    var obj = $.parseJSON(json);  //使用这个方法解析json  
        		    var state_value = obj.result;  //result是和action中定义的result变量的get方法对应的  
        		   
        		    },  
        		    error: function(json){  
        		     
        		     return false;  
        		    }  
        		    });  
        		
        	})

 		})

 	</script>
</html>