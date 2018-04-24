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
        <link href="css/style.css" type="text/css" rel="stylesheet">
         <link rel="stylesheet" href="css/fs2style.css" />
        <link rel="stylesheet" href="css/style.css" />
        <style>
        	.oncolor{border: 1px solid #ff6000;}
 			.color{border: 1px solid #ddd}  
 			.bgco{background-color: #f1f1f1; border-right: 1px solid #f1f1f1;border-left-color: #f1f1f1;}
       		pre{ white-space:pre-wrap; white-space:-moz-pre-wrap; white-space:-pre-wrap; white-space:-o-pre-wrap; word-wrap:break-word;}
       	 	em{font-style: normal;line-height: 40px;}
			em.error{ color:red;}
			.ok i{ width:20px; height:20px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error i{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;} 
       	 .el-input__icon{height:40px;}
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
    						<a href="index.jsp">首页</a>
    						<a href="Searchindexinfo?scope=全文&search=&workadress=全国&companyposition=">职位搜索</a>				
    						<a href="">地区频道</a>					
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	
    	<div class="mainbody">
    		<div class="left_dh">
    			
    			<a href="companyhomepage.jsp" class="on">
    				<span>
    					公司信息
    				</span>	
    			</a>
    			<a href="<s:url action="Searchjob"/>">
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
	    	<form method="post" action="Companyhomepage" id="form">
    		<div class="right_dh" style="position: relative;">
    			<div class="mfbody color" style="padding-bottom: 40px;">
	    				<h1>个人信息</h1>
	    				<div class="edit"></div>
	    				<ul class="minf" style="display: inline-block;">
	    					<li>
	    						<span>
									<font>*</font>
									公司名
								</span>
								<input name="companyname" type="text" maxlength="50"  class="inputon"  id="companyname" disabled="disabled" value='<s:property value="#session.company.companyname"/>'/>				
	    						<label class="info1" style="display:inline-block;">
	    								<i></i>
	    						</label>
	    					</li>	
	    				
							<div id="app">
								<li>
		    						<span>
										<font>*</font>
										成立日期
									</span>
										<input  type="text" maxlength="50"  class="inputon" disabled="disabled" id="birthday" value="<s:date name="#session.company.companysetdate" format="yyyy-MM-dd"/>"/>		
										<div id="by2" style="display: none;">
												<el-date-picker  v-model="value1" type="date" placeholder="选择日期" name="companysetdate">
											</el-date-picker>
										</div>
	    						</li>
								
	    					<li>
	    						<span>
									<font>*</font>
									公司所在地
								</span>
								<input type="text" maxlength="50"  class="inputon" disabled="disabled" id="hometowntext" value='<s:property value="#session.company.companyadress"/>'/>
								<input type="text" class="area-danxuan frominput" value="" data-value="" name="companyadress" style="display: none;"id="hometown"/>
	    						<label class="info1" style="display:inline-block;">
	    								<i></i>
	    						</label>
	    					</li>
	    					<li>
	    						<span>
									<font>*</font>
									行业类别
								</span>
								<input type="text" maxlength="50"  class="inputon display" disabled="disabled" id="industry" value="<s:property value="#session.company.companyindustry"/>"/>
								<input type="text" class="nation frominput eddis"  data-value=""  onclick="appendhybar(this,'danxuan')"style="display: none;" name="companyindustry"id="edindustry"/>
	    						<label class="info1" style="display:inline-block;">
	    								<i></i>
	    						</label>
	    					</li>
	    					
	    					<li>
	    						<span>
									<font>*</font>
									公司性质
								</span>
								<input type="text" maxlength="50"  class="inputon display" disabled="disabled" id="cpnature" value="<s:property value="#session.company.cpnature"/>"/>
								<div style="display: none;" class="eddis">
								<el-select v-model="value3" placeholder="请选择" style="width: 420px;" name="cpnature" >
									    <el-option
									      v-for="item in options3"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 </el-select>
								 </div>
	    					</li>
	    					<li>
	    						<span>
									<font>*</font>
									公司规模
								</span>
								<input type="text" maxlength="50"  class="inputon display" disabled="disabled" id="scale" value="<s:property value="#session.company.scale"/>"/>
								<div style="display: none;" class="eddis">
								<el-select v-model="value2" placeholder="请选择" style="width: 420px;" name="scale" >
									    <el-option
									      v-for="item in options2"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 </el-select>
								 </div>
	    					</li>
	    					<li>
	    						<span>
									<font>*</font>
									联系人
								</span>
								<input type="text" maxlength="50"  class="inputon display" disabled="disabled" id="linkuser" value="<s:property value="#session.company.linkuser"/>"/>
								<input type="text" class="nation frominput eddis" value="" style="display: none;"name="linkuser" id="edlinkuser"/>
	    						<label class="info1" style="display:inline-block;">
	    								<i></i>
	    						</label>
	    					</li>
	    					<li style="height: 70px;">
	    						<span>
									<font>*</font>
									公司简介
								</span>
								<div  class="inputon display"  id="profile" style="padding-top:0px;padding-left:50px;"><pre> <s:property value="#session.company.profile"/></pre></div>
								<textarea name="profile"  maxlength="1000" style="width: 414px;height: 50px; display: none;" class="eddis" id="edprofile"></textarea>
	    						
	    					</li>
	    					
	    					
						</div>
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
		    			<p>确认修改公司信息吗？</p>
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
 	<script type="text/javascript" src="js/phedit1.js"></script>
 	<script type="text/javascript" src="js/load_hycode.js"></script>
 	<script type="text/javascript" src="js/hgz_hycode.js"></script>
 	<script type="text/javascript" src="js/hgz_zncode.js"></script>
 	<script type="text/javascript" src="js/jquery.validate.js"></script>
	<script>
		$(".edit").click(function(){
			var  industry=$("#industry").val();
			var  linkuser=$("#linkuser").val();
			var  profile=$("#profile").text();
			$(".display").css("display","none")
			$(".eddis").css("display","block")
			$("#edindustry").val(industry);
			$("#edlinkuser").val(linkuser);
			$("#edprofile").text(profile);		
		})
		$(".cancel").click(function(){
			$(".display").css("display","block")
			$(".eddis").css("display","none")
		})
		if($("#username").text().trim()!=""){
   				$(".login").css("display","none");
   				$("#ulxiala").css("display","block");
   				
   			}
		
		
	</script>
	<script>
	function validform(){
		return $("#form").validate({
					errorElement:"em",
					errorPlacement:function(error,element){
					element.parent().find(".info1").append(error)
					element.addClass("errorborder")
		},
		
		highlight:function(a){
			$(a).parent().find(".info1").removeClass("ok").addClass("error")
			$(a).addClass("errorborder")
		},
		
		success:function(e){
			e.parent().removeClass("error").addClass("ok")			
			e.parent().parent().find("input").removeClass("errorborder")
		},
		
		rules:{
			companyadress:{
				required:true,
				maxlength:50
				
			},
			companyname:{
				required:true,
				maxlength:20
			},
			
			companyindustry:{
				required:true,
				maxlength:20
			},
			linkuser:{
				required:true,
				maxlength:20
			}
		
			
			
		},
		messages:{
			companyadress:{
				required:"公司所在地必须填写",
				maxlength:"输入字符不能超过50字"
				
				
			},
			companyname:{
				required:"公司名必须填写",
				maxlength:"输入字符不能超过20字"
			},
			companyindustry:{
				required:"行业类别必须填写",
				maxlength:"输入字符不能超过20字"
			},
			linkuser:{
				required:"联系人必须填写",
				maxlength:"输入字符不能超过20字"
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
</html>