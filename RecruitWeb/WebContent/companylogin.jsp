<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/themeone.css">
		<link rel="stylesheet" type="text/css" href="css/font.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
  <body>
    	<div class="headbody">
    		<div class="headbbb">
	    		<div class="headbody_iron"></div>
	    		<div class="headbody_font_left">
	    			
	    			    			|欢迎登录
	
	    			
	    		</div>
	    		<div class="headbody_font_right">
	    			
	    			<a href="index.jsp">首页</a>
	    			
	    		</div>
	    	</div>
    	</div>
    	<div class="midbody">
    		<div class="mid_zsbody">
    			<!--         左边-->
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
    			
    				<div class="mid_lfbody_bottom">
    					<div class="switchzc">
    						<a href="login.jsp">求职者登录   ☞</a>
    						
    						
    					</div>
    					
    					
    				</div>
    			
    			
    			</div>
    			<!--          右边-->
    			<div class="mid_rfbody">
    				<div class="mid_rfbody_hr"></div>
    				<div class="mid_lfbody_midbd">
    					<div class="mid_rfbody_er dnbt">
    						登  录	
    					</div>
    					<form method="post" action="Companylogin">
    						<div class="mid_rfbody_e">
    							<label class="yxzc">帐号</label>
    							<div class="mid_rfbody_em">    
    								
    									<input type="text" maxlength="100" name="companymail" class="" placeholder="请输入邮箱，"/>
    								
    							</div>
    							
    						</div>
    						<div class="mid_rfbody_e">
    							<label class="yxzc">密码</label>
    							<div class="mid_rfbody_em">    
    								
    									<input type="password" maxlength="16"  name="password" class="" placeholder="请输入6-16位密码"/>
    								
    							</div>
    						</div>
    						
    						<div class="mid_rfbody_dl">
    							<button class="button_dl " type="submit" >登 录</button>
    						</div>
    						
    						
    						<div class="mid_rfbody_zuce">
    							
    							没有企业帐号，<a href="companyre.jsp">免费注册 	→</a>
    							
    							
    						</div>
    						
    						
    						
    						
    					</form>
    				</div>
    			</div>
    			
    			
    		</div>
    		
    		
    	</div>
    	
    	
    	
 	</body>
</html>