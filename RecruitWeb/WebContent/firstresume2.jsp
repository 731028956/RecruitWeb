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
        <link rel="stylesheet" href="css/fs2style.css" />
        <link rel="stylesheet" href="css/style.css" />
        <style>
        	body{
    		background-color:#f5f5f5;
    		}
    		em{font-style: normal;line-height: 40px;}
			em.error{ color:red;}
			.ok i{ width:20px; height:20px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error i{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;}   
        </style>
    </head>
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
			    		 	<span class="widop color01"></span>
			    		</li>
			    		<li>
			    			<span><img src="img/icon_success.jpg" >创建完成</span>
							<span class="widop color02"></span>		    		
			    		</li>
					</ul>
			
	    	</div>
	    	<s:form action="Firstresume2" method="get" id="form">
	    			 <s:token></s:token>
					<div style="width: 100%;height: 30px;"></div>
					<div class="mfbody">
						<h1>最近工作/实习经历</h1>
						<ul class="minf">
							<li>
								<span>
							<input type="hidden" class="hid" value='<s:property value="gzjy"/>'/>
									<font>*</font>
									是否有工作经验
								</span>
								<div class="radio_gander">
									<span class="widcheck">
										<input type="radio" name="gander" value="0" class="inpution"id="male"/>
										<label style="width: auto;cursor: pointer;"for="male">有</label>
									</span>
									<span class="widcheck">
										<input type="radio" name="gander" value="1" class="inpution" id="famale"/>
										<label style="width: auto;cursor: pointer;"for="famale">无</label>
									</span>
								</div>
							</li>
							<div class="wydiv" style="display: block;">
								<li>
									<span>
										<font>*</font>
										公司名称
									</span>
									<input  type="text" maxlength="50" class="frominput" name="companyname"/>
								</li>
								<li>
									<span>
										<font>*</font>
										行业类别
									</span>
									<input type="text" class="nation frominput" value="" data-value=""  onclick="appendhybar(this,'danxuan')" name="industry"/>
								</li>
								<li>
									<span>
										<font>*</font>
										职位名称
									</span>
									<input type="text" maxlength="50" class="frominput" name="position"/>
								</li>
								<li>
									<span>
										<font>*</font>
										职位类别
									</span>
									<input type="text" class="nation frominput" value="" data-value=""  onclick="appendhyznbar(this,'danxuan')" name="zwlb"/>
								</li>
								<li>
									<span>
										<font>*</font>
										工作时间
									</span>
									<el-date-picker
									      v-model="value4"
									      type="daterange"
									      range-separator="至"
									      start-placeholder="开始日期"
									      end-placeholder="结束日期" style="width: 420px;" name="strend">
									    </el-date-picker>
								</li>
								<li style="height: 133px;">
									<span>
										<font>*</font>
										工作描述
									</span>
									<textarea name="workdescribe"  maxlength="1000" style="width: 414px;height: 80px;"></textarea>
								</li>
								<li>
									<p style="padding-left:50px ;">
										简历创建成功后，您可以在“完善简历”时添加多份工作经历
									</p>
									
								</li>
							</div>
							
							
						</ul>
			</div>
			<div style="width: 100%;height: 30px;"></div>
						<div class="mfbody">
							<h1>教育经历</h1>
							<ul class="minf">
								<li>
									<span>
										<font>*</font>
										学历/学位
									</span>
									<el-select v-model="value2" placeholder="请选择" style="width: 420px;" name="educationbackground">
									    <el-option
									      v-for="item in options2"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 	</el-select>
								</li>
								<!--<li>
								<span>
									<font>*</font>
									是否统招
								</span>
								<div class="radio_gander">
									<span class="widcheck">
										<input type="radio" name="tz" value="0" class="inpution"id="tz1"/>
										<label style="width: auto;cursor: pointer;"for="tz1">是</label>
									</span>
									<span class="widcheck">
										<input type="radio" name="tz" value="1" class="inpution" id="tz2"/>
										<label style="width: auto;cursor: pointer;"for="tz2">否</label>
									</span>
								</div>
								</li>-->
								
								<li>
										<span>
											<font>*</font>
											就读时间
										</span>
										<el-date-picker
									      v-model="value3"
									      type="daterange"
									      range-separator="至"
									      start-placeholder="开始日期"
									      end-placeholder="结束日期" style="width: 420px;" name="readtime">
									    </el-date-picker>
								</li>
								<li>
										<span>
											<font>*</font>
											学校名称
										</span>
										<input type="text" maxlength="50" class="frominput" name="schoolname"/>
										<label class="info">
	    								<i></i>
	    								</label>
								</li>
								<li>
										<span>
											<font>*</font>
											专业名称
										</span>
										<input type="text" maxlength="50" class="frominput" name="zhuanye"/>
										<label class="info">
	    								<i></i>
	    								</label>
								</li>
							</ul>
							
						</div>
						<div style="width: 100%;height: 30px;"></div>
						<div class="mfbody">
							<h1>求职意向</h1>
							<ul class="minf">
									<li>
									<span>
									<font>*</font>
									期望工作性质
									</span>
									
    									<el-select v-model="value6" placeholder="请选择"  name="widcheck" style="width: 420px;">
									    <el-option
									      v-for="item in options4"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								
								</li>
								<li>
									<span>
									<font>*</font>
									到岗时间
									</span>
									
    									<el-select v-model="value5" placeholder="请选择"  name="dgsj"style="width: 420px;">
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
										期望工作地点
									</span>
									<input type="text" class="area-duoxuan frominput" value="" data-value="" name="workplace"/>
									<label class="info">
	    								<i></i>
	    							</label>
								</li>
								<li>
									<span>
										<font>*</font>
										期望从事行业
									</span>
									<input type="text" class="nation frominput" value="" data-value=""  onclick="appendhybar(this,'duoxuan')" 
										name="ExpectIndustry"/>
									<label class="info">
	    								<i></i>
	    							</label>
								</li>
								<li>
									<span>
										<font>*</font>
										期望从事职业
									</span>
									<input type="text" class="frominput" name="ExpectPosition"	/>
									<label class="info">
	    								<i></i>
	    							</label>
								</li>
								<li>
									<span>
										<font>*</font>
										期望月薪(税前)
									</span>
									<el-select v-model="value" placeholder="请选择" style="width: 420px;" name="salary">
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
										工作状态
									</span>
									<el-select v-model="value1" placeholder="请选择" style="width: 420px;" name="workstate">
									    <el-option
									      v-for="item in options1"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 	</el-select>
								</li>
							</ul>
						</div>
						<div class="frsubmit" style="padding-bottom: 200px;">
				<button type="submit"  name="submit">创建完成</button>
			
			
			</div>
			</s:form>
			
	    </div>
	</div>
 	</body>
 <script src="js/jquery-1.11.3.min.js"></script>
 <script type="text/javascript" src="js/selectFilter.js"></script>
 <script src="https://unpkg.com/vue/dist/vue.js"></script>
 <script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
 <script type="text/javascript" src="js/load_hycode.js"></script>
 <script type="text/javascript" src="js/hgz_hycode.js"></script>
 <script type="text/javascript" src="js/hgz_zncode.js"></script>
 <script type="text/javascript" src="js/City_data.js"></script>
 <script type="text/javascript" src="js/areadata.js"></script>
 <script type="text/javascript" src="js/auto_area.js"></script>
 <script type="text/javascript" src="js/fs2elements.js"></script>
 <script type="text/javascript" src="js/js2jq.js"></script>
 <script type="text/javascript" src="js/jquery.validate.js"></script>
 <script>
 var gzjy=$(".hid").val();
	if(gzjy.substr(0,1)=="无"){
		
		$("#famale").attr("checked","true");
		$($(".wydiv")).css("display","none");
	
	}else{
		$("#male").attr("checked","true");
	}
 </script>
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
			schoolname:{
				required:true,
				maxlength:20
				
			},
			
			zhuanye:{
				required:true,
				maxlength:20
			},
			workplace:{
				required:true,
				maxlength:20
			},
			ExpectIndustry:{
				required:true,
				maxlength:50
			},
			ExpectPosition:{
				
				required:true,
				maxlength:50
			}
			
		},
		messages:{
			schoolname:{
				required:"学校名必须填写",
				maxlength:"最大输入不能超过20字"
				
				
			},
			zhuanye:{
				required:"专业必须填写",
				maxlength:"最大输入不能超过20字"
				
			},
			workplace:{
				required:"期望工作地点必须填写",
				maxlength:"最大输入不能超过20字"

			},
			ExpectIndustry:{
				required:"期望从事必须填写",
				maxlength:"最大输入不能超过50字"
			},
			ExpectPosition:{
				required:"期望从事职业必须填写",
				maxlength:"最大输入不能超过50字"
			}
		}
				
				})
				
			})
			
			
		</script>
</html>