<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/themethree.css"/>
        <link rel="stylesheet" href="css/fsresume.css" />
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <style>
        	.oncolor{border: 1px solid #ff6000;}
 			.color{border: 1px solid #ddd}  
 			.bgco{background-color: #f1f1f1; border-right: 1px solid #f1f1f1;border-left-color: #f1f1f1;}
        	.minf>li{
        		padding-left: 100px;
        		
        	}
        	.inputon{
        		border: 1px solid #DDDDDD;
        		width: 230px;
        	}
        	span{font-style: normal;}
			span.error{ color:red;}
			.ok i{ width:12px; height:12px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error i{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;}
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
    			<a href="<s:url action="Userreceive"/>">
    				<span>
    					企业直邀
    				</span>	
    			</a>
    			<a href="revisepassword.jsp" class="on">
    				<span>
    					密码修改
    				</span>	
    			</a>
    		</div>	
	    	<form  id="form1">
    		<div class="right_dh">
    			<div class="mfbody color" style="padding-bottom: 40px;">
	    				<h1>修改密码</h1>
	    				<div class="edit"></div>
	    				<ul class="minf">
	    					<li>
	    						<span>
									<font>*</font>
									原密码
								</span>
								<input name="oldpassword" type="password" maxlength="16"  class="inputon" id="oldpassword"/>				
	    						<label class="info">
    								<i></i>
    							</label>
	    					</li>	
	    					
	    					<li>
								<span>
									<font>*</font>
									新密码
								</span>
								<input type="password" maxlength="16"  class="inputon"id="password" name="newpassword"/>	
								<label class="info">
    								<i></i>
    							</label>
							</li>
						
							<li>
		    						<span>
										<font>*</font>
										确认密码
									</span>
										<input  type="password" maxlength="16"  class="inputon"  name="password1" />		
									<label class="info">
    								<i></i>
    								</label>	
	    					</li>
							
	    					

	    				</ul>  	
	    				<div class="btn" style="display: block;padding-top: 30px;">
		    				<span class="save" style="margin-left: 300px;">修改</span>
						</div>
    			</div>
    			
    		
    			
    	</div>
    	</form>

    	
    </div>

    	
    		
 	</body>
 	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/City_data.js"></script>
	<script type="text/javascript" src="js/areadata.js"></script>
	<script type="text/javascript" src="js/auto_area.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	<script>
	$(function(){
			if($("#username").text().trim()!=""){
				$(".login").css("display","none");
				$("#ulxiala").css("display","block");
				
			}
			
	})
	function validform(){
		return $("#form1").validate({
		errorElement:"span",
		errorPlacement:function(error,element){
			
		element.parent().find(".info").append(error)
		element.addClass("errorborder")
		},
	
		highlight:function(a){
			$(a).parent().find(".info").removeClass("ok").addClass("error")
			$(a).addClass("errorborder")
		},
	
		success:function(e){
			e.parent().removeClass("error").addClass("ok")
			e.parent().prev().removeClass("errorborder")	
		},
	
	rules:{
		oldpassword:{
			required:true,
			rangelength:[6,16]	
			
		},
		
		newpassword:{
			required:true,
			rangelength:[6,16]	
		},
		password1:{
			required:true,
			equalTo:'#password'
			
		}
		
		
	},
	messages:{
		oldpassword:{
			required:"旧密码必须填写",
			rangelength:"密码需要6-16位"
			
		},
		
		newpassword:{
			required:"密码必须填写",
			rangelength:"用户名需要6-16位"
		},
		password1:{
			required:"确认密码必须填写",
			equalTo:"与密码输入不一致"
		}
		
		}
			
	})

	}
	$(validform());

		$(".save").click(function(){
			if(validform().form()) {
				var params = { 
		  		           oldpassword:$("#oldpassword").val(),
		  		           newpassword:$("#password").val()
		  		    };
					$.ajax({  
			     		    type: "POST",  
			     		    url: "Reviswpassword", //这里写的是action的名字,设置了namespace会出错  
			     		    data: params,  
			     		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
			     		    success: function(json){    
			     		    	alert("密码修改成功")
			     		    	window.href= window.location.reload()
			     		    },  
			     		    error: function(json){  
			     		   		alert("密码修改失败")
			     		     return false;  
			     		    }  
			     	});  
		    	
		    } else {
		        //校验不通过，什么都不用做，校验信息已经正常显示在表单上
		    }
			
		})
		
			
	
	
	</script>
 	
</html>