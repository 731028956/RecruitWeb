<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>homepage</title>
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
 			em{font-style: normal;line-height: 40px;}
			em.error{ color:red;}
			.ok i{ width:20px; height:20px; display:inline-block; background:url(img/ok.png); background-size:100%;}
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
    			
    			<a href="<s:url action="Firstresume3"/>" class="on">
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
    			<a href="revisepassword.jsp">
    				<span>
    					密码修改
    				</span>	
    			</a>
    		</div>	
	    	<form method="get" action="Personhomepage" id="form">
    		<div class="right_dh" style="position: relative;">
    			<div class="mfbody color" style="padding-bottom: 40px;">
	    				<h1>个人信息</h1>
	    				<div class="edit"></div>
	    				<ul class="minf">
	    					<li>
	    						<span>
									<font>*</font>
									姓名
								</span>
								<input	type="text" maxlength="50"  class="inputon"  id="usernametext" disabled="disabled" value='<s:property value="#session.user.username" />'/>				
								<input name="username" type="text" maxlength="50"  class="inputon"  id="username1" value='<s:property value="#session.user.username" />' style="display: none;"/>				
	    						<label class="info">
	    								<i></i>
	    						</label>
	    					</li>	
	    					
	    					<li>
								<span>
									<font>*</font>
									性别
								</span>
								<input type="text" maxlength="50"  class="inputon" disabled="disabled" id="sex" value='<s:property value="#session.user.sex"/>'/>	
								<div class="radio_gander" style="display: none;">
									<span class="widcheck">
										<input type="radio" name="sex" value="男" class="inpution"id="male"/>
										<label style="width: auto;cursor: pointer;"for="male">男</label>
									</span>
									<span class="widcheck">
										<input type="radio" name="sex" value="女" class="inpution" id="famale"/>
										<label style="width: auto;cursor: pointer;"for="famale">女</label>
									</span>
								</div>
							</li>
							<div id="app">
								<li>
		    						<span>
										<font>*</font>
										生日
									</span>
										<input  type="text" maxlength="50"  class="inputon" disabled="disabled" id="birthday" value='<s:date name="#session.user.birthday" format="yyyy-MM-dd"/>'/>		
										<div id="by2" style="display: none;">
											<el-date-picker  v-model="value1" type="date" placeholder="选择日期" name="birthday">
											</el-date-picker>
										</div>
	    						</li>
							</div>	
	    					<li>
	    						<span>
									<font>*</font>
									家乡
								</span>
								<input type="text" maxlength="50"  class="inputon" disabled="disabled" id="hometowntext" value='<s:property value="#session.user.hometown" />'/>
								<input name="hometown" type="text" class="area-danxuan frominput" value="" data-value="" id="hometown" style="display: none;"/>
	    						<label class="info">
	    								<i></i>
	    						</label>
	    					</li>	

	    				</ul>  	
	    				<div class="btn">
		    				<span class="save" >保存</span>
		    				<span class="cancel">取消</span>
						</div>
    			</div>
    			<div class="tipbgcolor"></div>
    		<div class="tip">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>确认修改个人信息吗？</p>
		    			<p>为保证简历信息的真实性，你的其他简历中基本信息将同时被修改！</p>
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
						</div>
	    		</div>
    		
    		</div>
    			
    	</div>
    	</form>

    	
    </div>

    	
    		
 	</body>
 	<script type="text/javascript" src="js/jquery.min.js"></script>
 	<script src="https://unpkg.com/vue/dist/vue.js"></script>
	<script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
	<script src="js/phelement.js"></script>
	<script type="text/javascript" src="js/City_data.js"></script>
	<script type="text/javascript" src="js/areadata.js"></script>
	<script type="text/javascript" src="js/auto_area.js"></script>	
 	<script type="text/javascript" src="js/jquery.validate.js"></script>
 	<script type="text/javascript">
 		$(function(){
 			if($("#username").text().trim()!=""){
   				$(".login").css("display","none");
   				$("#ulxiala").css("display","block");
   				
   			}
 			
 		})
 	</script>
<script>
	function validform(){
		return $("#form").validate({
					errorElement:"em",
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
			e.parent().parent().find("input").removeClass("errorborder")
		},
		
		rules:{
			username:{
				required:true,
				maxlength:20
				
			},
			
			hometown:{
				required:true,
				maxlength:20
			}
			
			
		},
		messages:{
			username:{
				required:"姓名必须填写",
				maxlength:"最大输入不能超过20字"
				
				
			},
			hometown:{
				required:"户口所在地必须填写",
				maxlength:"最大输入不能超过20字"
				
			}
		}
				
		})
				
	}
	$(validform());

	$(".save").click(function(){ 
	    if(validform().form()) {
	    	$(".tipbgcolor").css("display","block");
	    	$(".tip").css("display","block");	
	    } else {
	        //校验不通过，什么都不用做，校验信息已经正常显示在表单上
	    }
	}); 
			
			
</script>
<script type="text/javascript" src="js/phedit1.js"></script>
</html>