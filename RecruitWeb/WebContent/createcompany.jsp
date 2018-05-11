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
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <link rel="stylesheet" href="css/fs2style.css" />
        <link rel="stylesheet" href="css/style.css" />
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
    			
    			<div class="headmfrfont">创建公司信息</div>
    			<div class="headbodfry_font_right">
	    			
	    			<a href="#" style="color: black;">首页</a>
	    			
	    		</div>
    		</div>
			
    	</div>
    	<div class="main">
    		<div class="tiankong"></div>
	    	
	    	<form method="get" action="Createcompany" id="form">
					<div style="width: 100%;height: 30px;"></div>
					<div class="mfbody">
						<h1>公司信息</h1>
						<ul class="minf">
							<li>
								<span>
									<font>*</font>
									公司名
								</span>
								<input name="companyname" type="text" maxlength="50" class="frominput" />
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<!--<li>
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
								
							</li>-->
							<li>		 
									<span>
									<font>*</font>
										成立时间
									</span>
									    <el-date-picker v-model="value1" type="date" placeholder="选择日期" name="companysetdate">
									    </el-date-picker>
									 
							
								
							</li>
							<li>
								<span>
									<font>*</font>
										公司所在地
								</span>
								<input type="text" class="frominput" name="companyadress" />
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
									<span>
										<font>*</font>
										行业类别
									</span>
									<input type="text" class="nation frominput" value="" data-value=""  onclick="appendhybar(this,'duoxuan')" 
										name="companyindustry"/>
									<label class="info">
    								<i></i>
    								</label>
							</li>
							<li>
									<span>
										<font>*</font>
										公司性质
									</span>
									<el-select v-model="value3" placeholder="请选择" style="width: 420px;" name="cpnature">
									    <el-option
									      v-for="item in options3"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 	</el-select>
							</li>	
							<li>
									<span>
										<font>*</font>
										公司规模
									</span>
									<el-select v-model="value2" placeholder="请选择" style="width: 420px;" name="scale">
									    <el-option
									      v-for="item in options2"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 	</el-select>
							</li>	
							<li style="height: 133px;">
									<span>
										<font>*</font>
										公司简介
									</span>
									<textarea name="profile"  maxlength="1000" style="width: 414px;height: 80px;"></textarea>
									<label class="info">
    								<i></i>
    								</label>
							</li>
							<li>
								<span>
									<font>*</font>
									联系人
								</span>
								<input name="linkuser" type="text" maxlength="11" class="frominput"style="background-color: white;"/>
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
								<span>
									<font>*</font>
									联系号码
								</span>
								<input name="companyphone" type="text" maxlength="11" class="frominput"style="background-color: white;"/>
								<label class="info">
    								<i></i>
    							</label>
							</li>
							<li>
								<span>
									<font>*</font>
									联系邮箱
								</span>
								<input value='<s:property value="companymail"/>' type="email" maxlength="30" class="frominput" disabled="disabled" style="background-color: white;"/>
							</li>
							
						</ul>
						
					</div>
					<div class="frsubmit">
						<input type="hidden" name="gzjy" id="hid1" value="" />
					<button type="submit"  name="submit">完成</button>
			
			
			</div>
			</form>
			
	    </div>
	 </div>
	    <script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/City_data.js"></script>
		<script type="text/javascript" src="js/areadata.js"></script>
		<script type="text/javascript" src="js/auto_area.js"></script>
		<script src="https://unpkg.com/vue/dist/vue.js"></script>
		<script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
		<script type="text/javascript" src="js/load_hycode.js"></script>
 		<script type="text/javascript" src="js/hgz_hycode.js"></script>
 		<script type="text/javascript" src="js/hgz_zncode.js"></script>
 		<script type="text/javascript" src="js/jquery.validate.js"></script>
		<script src="js/fs1.js"></script>
		<script>
			$(function(){
				jQuery.validator.addMethod("isMobile", function(value, element) {
					var length = value.length;
					var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
				}, "请正确填写您的手机号码");
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
			companyname:{
				required:true,
				maxlength:20
			},
			
			companyadress:{
				required:true,
				maxlength:50
			},
			linkuser:{
				required:true,
				maxlength:20
			},
			companyindustry:{
				required:true,
				maxlength:50
			},
			companyphone:{
				required:true,
				isMobile:true,
				minlength:11
			},
			profile:{
				required:true,
				maxlength:6000
			}
			
		},
		messages:{
			companyname:{
				required:"姓名必须填写",
				maxlength:"最多输出不超过20字"
				
				
			},
			companyadress:{
				required:"公司所在地必须填写",
				maxlength:"最多输出不超过50字"
				
			},
			linkuser:{
				required:"联系人必须填写",
				maxlength:"最多输出不超过20字"
				
				
			},
			companyindustry:{
				required:"居住地必须填写",
				maxlength:"最多输出不超过50字"
				
				
			},
			companyphone:{
				required:"电话必须填写",
				isMobile:"请正确填写您的手机号码",
				minlength:"确认手机不能小于11个字符"
			},
			profile:{
				required:"公司简介必须填写",
				maxlength:"最多输出不超过6000字"
			}
		}
				
				})
				
			})
			
			
		</script>
 	</body>
 	
</html>