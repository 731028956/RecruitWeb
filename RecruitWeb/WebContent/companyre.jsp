<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="/struts-tags" prefix="s"%>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/register.css">
		<link rel="stylesheet" type="text/css" href="css/font.css">
		<link rel="stylesheet" type="text/css" href="css/themeone.css">
		<link rel="stylesheet" type="text/css" href="css/verify.css">
        <title>JSP Page</title>
       <style>
			span{font-style: normal;}
			span.error{ color:red;}
			.ok i{ width:12px; height:12px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error i{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;}
		</style>
    </head>
     <body>
    	<div class="headbody">
    		<div class="headbbb">
	    		<div class="headbody_iron"></div>
	    		<div class="headbody_font_left">
	    			
	    			    			|欢迎注册
	
	    			
	    		</div>
	    		<div class="headbody_font_right">
	    			
	    			<a href="#">首页</a>
	    			
	    		</div>
	    	</div>
    	</div>
    	<div class="midbody">
    		
    		<div class="mid_zsbody">
    			<div class="mid_lfbody">
    				<div class="mid_lfbody_top">
	    				<div class="mid_lfbody_hr"></div>
	    				<div class="iron_lf">
	    					<div class="iron_1"></div>
	    					
	    					<div class="iron_font">
									千份简历的筛选，用心的模版
	    					</div>
	
	    				</div>
	    				<div class="iron_lf">
	    					<div class="iron_2"></div>
	    					
	    					<div class="iron_font">
									海量的职位优选，360行任你挑选
	    					</div>
	
	    				</div>
	    				<div class="iron_lf">
    					<div class="iron_3"></div>
    					
    					<div class="iron_font">
								快速的职位投递，分秒必争直达HR
    					</div>

    				</div>
    					<div class="iron_lf">
    					<div class="iron_4"></div>
    					
    					<div class="iron_font">
								高效的投递反馈，谁看我简历早知道
    					</div>

    				</div>
    				</div>
    				<div class=mid_lfbody_bottom>
    					<div class="switchzc">
    						
    						<a href="register.jsp"> 求职者入口     ☞</a>
    						
    					</div>
    					
    					
    					
    				</div>
    			</div>
    			
    			<div class="mid_rfbody">
    				<div class="mid_rfbody_hr"></div>
    				<div class="mid_rfbody_midbd">
    					<div class="mid_rfbody_er zcbt">
    						邮箱注册：	
    					</div>
    					<s:form method="post" action="CompanyRegister" id="form">
    					 <s:token></s:token>
    						<div class="mid_rfbody_e">
    							<label class="yxzc">邮箱</label>
    							<label class="info">
    								<i></i>
    							</label>
    							<div class="mid_rfbody_em">    
    								
    									<input type="text" maxlength="100" name="companymail" class="" placeholder="请输入邮箱，便于登录和找回" id="companymail"/>
    								
    							</div>
    						</div>
    						<div class="mid_rfbody_e">
    							<label class="yxzc">密码</label>
    							<label class="info">
    								<i></i>
    							</label>
    							<div class="mid_rfbody_em">    
    								
    									<input type="password" maxlength="16"  name="password" class="" placeholder="请输入6-16位密码"/ id="password">
    								
    							</div>
    						</div>
    						<div class="mid_rfbody_e">
    							<label class="yxzc">确认密码</label>
    							<label class="info">
    								<i></i>
    							</label>
    							<div class="mid_rfbody_em">    
    								
    									<input type="password" maxlength="16" name="password1" class="" placeholder="请输入和上面相同的密码"/>
    								
    							</div>
    						</div>
    						<div style="padding-top: 30px;" >
    							<div id="mpanel1"></div>	
    	
    						</div>
    						<div class="mid_rfbody_zc">
    							<button class="button_zs " type="submit" >注 册</button>
    					
    						</div>
    						<div class="mid_rfbody_delu">
    							
    							已有企业帐号，<a href="companylogin.jsp">直接登录  	☞</a>
    							
    							
    						</div>
    						
    						
    					</s:form>
    					
    				</div>
    				
    			
    		    </div>
    				
    		</div>
    			
    		
    	</div>
    	
    	
 	</body>
 	<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/verify.js" ></script>
     <script>
			$(function(){
				var check=0;
				 jQuery.validator.addMethod("isExist", function(value, element) {       
       
				    return (check==0);       
				 }, "邮箱已经被注册");  
					$("#companymail").blur(function(){
						
		 				var params = {  
		 						companymail : $("#companymail").val()  
	       
		     		        };
		 				$.ajax({  
		 	     		    type: "POST",  
		 	     		    url: "Checkcompanymail", 
		 	     		    data: params,  
		 	     		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
		 	     		    success: function(json){  
		 	     		    
		 	     		    	check=0; 
		 	     		  	
		 	     		    	
		 	     		    },  
		 	     		    error: function(json){  
								check=1;
							  	
							
								
		 	     		    }  
		 	     		 });  
		 				
		 				
		 				
		 			})
				 
					
				
					$("#form").validate({
						errorElement:"span",
						errorPlacement:function(error,element){
						element.parent().parent().find(".info").append(error)
						element.parent().addClass("errorborder")
					},
					
					highlight:function(a){
						$(a).parent().parent().find(".info").removeClass("ok").addClass("error")
						$(a).parent().addClass("errorborder")
					},
					
					success:function(e){
						e.parent().removeClass("error").addClass("ok")
						e.parent().next().removeClass("errorborder")
						$(".button_zs").click(function(){
							if($("#mpanel1").find(".verify-msg").text()!="验证成功"){
								return false;
								$(this).addClass("errorborder")						
							}else{
								$(this).removeClass("errorborder")
							}
					
						})
					},
					
					rules:{
						companymail:{
							required:true,
							email:true,
							isExist:true
						},
						
						password:{
							required:true,
							rangelength:[6,16]	
						},
						password1:{
							required:true,
							equalTo:'#password'
							
						}
						
					},
					messages:{
						companymail:{
							required:"邮箱必须填写",			
							email:"请输入正确的邮箱格式",
							isExist:"邮箱已经被注册"
						},
						
						password:{
							required:"密码必须填写",
							rangelength:"用户名需要6-16位"
						},
						password1:{
							required:"密码必须填写",
							equalTo:"与密码输入不一致"
						}
					}
							
							})
							
						})
						$('#mpanel1').slideVerify({
							type : 1,		//类型
							vOffset : 5,	//误差量，根据需求自行调整
							barSize : {
								width : '100%',
								height : '40px'
							},
							ready : function() {
							},
							success : function() {
								
								
								//......后续操作
							},
							error : function() {
								
							}
							
					});	
			
			
		</script>
</html>