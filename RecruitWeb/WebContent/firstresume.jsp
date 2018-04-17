<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/themetwo.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/fsresume.css" />
        <link rel="stylesheet" href="css/selectFilter.css"/>
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <link href="css/style.css" type="text/css" rel="stylesheet">
    </head>
    <style>
    	body{
    		background-color:#f5f5f5;
    	}
			.everyWeekDay .weekday,.everyDay .days {/*解决span不支持width属性*/display: -moz-inline-box;display: inline-block;margin: 5px 0 0 20px;text-align: center;width: 20px;border: 1px solid #F7F7F7;cursor: pointer;}		
			.marginTop{margin-top: 5px;}
			.selectStyle{padding-left: 10px;border: none;border-radius: 3px;outline: none;appearance: none;-moz-appearance: none;-webkit-appearance: none;margin: 0 10px 0 10px;width: 60px;border-color: #0FB9EF;color: #0FB9EF;}
			em{font-style: normal;line-height: 40px;}
			em.error{ color:red;}
			.ok i{ width:20px; height:20px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error i{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;}          
	</style>
    <body>
    <div id="app">
    	<div class="headbody">
    		<div class="headbbb">
    			
    			<div class="headbody_iron"></div>
    			
    			<div class="headmfrfont">您正在创建您的第一份简历</div>
    			<div class="headbodfry_font_right">
	    			
	    			<a href="#" style="color: black;">首页</a>
	    			
	    		</div>
    		</div>
			
    	</div>
    	<div class="main">
    		<div class="tiankong"></div>
	    	<div class="fsrhead">
		    		<ul>
			    		<li>
			    			<span>1.个人信息</span>
			    			<span class="widop color01"></span>
			    		</li>
			    		<li>
			    			<span>2.创建简历</span>
			    		 	<span class="widop color02"></span>
			    		</li>
			    		<li>
			    			<span><img src="img/icon_success.jpg" >创建完成</span>
							<span class="widop color02"></span>		    		
			    		</li>
					</ul>
			
	    	</div>
	    	<s:form method="get" action="Firstresume"  id="form">
					<div style="width: 100%;height: 30px;"></div>
					<div class="mfbody">
						<h1>个人信息</h1>
						<ul class="minf">
							<li>
								<span>
									<font>*</font>
									姓名
								</span>
								<input name="username" type="text" maxlength="50" class="frominput" />
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
								<span>
									<font>*</font>
									性别
								</span>
								<div class="radio_gander">
									<span class="widcheck">
										<input type="radio" name="sex" value="男" class="inpution"id="male" checked="checked"/>
										<label style="width: auto;cursor: pointer;"for="male">男</label>
									</span>
									<span class="widcheck">
										<input type="radio" name="sex" value="女" class="inpution" id="famale"/>
										<label style="width: auto;cursor: pointer;"for="famale">女</label>
									</span>
								</div>
								
								
							</li>
							<li>
								<span>
									<font>*</font>
										工作经验
								</span>
								<el-select v-model="value" placeholder="请选择" style="width: 420px;" name="gzjy" >
								    <el-option
								      v-for="item in options"
								      :key="item.value"
								      :label="item.label"
								      :value="item.value">
								    </el-option>
								 </el-select>
								
							</li>
							<li>		 
									<span>
									<font>*</font>
										出生年月
									</span>
									    <el-date-picker v-model="value1" type="date" placeholder="选择日期" name="birthday">
									    </el-date-picker>
									 
							
								
							</li>
							<li>
								<span>
									<font>*</font>
										户口所在地
								</span>
								<input type="text" class="area-danxuan frominput" value="" data-value="" name="hometown" />
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
								<span>
									<font>*</font>
										现居住地
								</span>
								<input type="text" class="area-danxuan frominput" value="" data-value="" name="adress" />
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
								<span>
									<font>*</font>
									手机号码
								</span>
								<input name="userphone" type="text" maxlength="15" class="frominput"style="background-color: white;"/>
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
								<span>
									<font>*</font>
									邮箱
								</span>
								<input name="email" type="email" maxlength="30" class="frominput" disabled="disabled" style="background-color: white;"value='<s:property value="useremail"/>'/>
							</li>
							
						</ul>
						
					</div>
					<div class="frsubmit">
						<input type="hidden" name="gzjy" id="hid1" value="" />
					<button type="submit"  name="submit">下一步</button>
			
			
			</div>
				
			</s:form>
			
	    </div>
	 </div>
	    <script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/City_data.js"></script>
		<script type="text/javascript" src="js/areadata.js"></script>
		<script type="text/javascript" src="js/auto_area.js"></script>
		<script src="https://unpkg.com/vue/dist/vue.js"></script>
		<script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
		<script type="text/javascript" src="js/jquery.validate.js"></script>
		<script src="js/fs1.js"></script>
		<script>
			$(function(){
				$("#form").validate({
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
				required:true
				
			},
			
			hometown:{
				required:true
			},
			adress:{
				required:true
			},
			userphone:{
				required:true
			}
			
		},
		messages:{
			username:{
				required:"姓名必须填写"
				
				
			},
			hometown:{
				required:"户口所在地必须填写"
				
			},
			adress:{
				required:"居住地必须填写"
				
				
			},
			userphone:{
				required:"电话必须填写"
			}
		}
				
				})
				
			})
			
			
		</script>
 	</body>
 	
</html>