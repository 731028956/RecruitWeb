<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    	<meta name="format-detection" content="telephone=no">	
        <title>简历</title>
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/themethree.css"/>
        <link rel="stylesheet" href="css/fsresume.css" />
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="css/selectFilter.css"/>
        <link rel="stylesheet" href="css/fs2style.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/mrbed.css" />
   		<link rel="stylesheet" href="css/cropper.min.css">
    	<link rel="stylesheet" href="css/ImgCropping.css">

        <style>
        	.el-input__inner{height: 32px;}
        	.el-input__prefix{top:-4px}
        	#n1 .el-input__inner{width: 214px;}
        	.el-input__suffix{right: initial;left: 180px;}
        	#n10 .el-input__inner{height: 38px;}
        	#n3 i{left: -15px;top: 7px;}
        	.showit{display: inline-block;}
			.offit{display: none;}
        	em{font-style: normal;line-height: 40px;}
			em.error{ color:red;}
			.ok i{ width:20px; height:20px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error b{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;} 
			
        </style>
    </head>
    <body>
    	<div class="nag">
    			<div style="height: 56px;width: 1000px;margin: 0px auto;">
    				<a href="#">
    				<img  src="img/title.jpg" class="logo"/>
    				</a>
    				<p class="link_to">				
    						<a href="">首页</a>
    						<a href="Searchindexinfo?scope=全文&search=&workadress=全国&companyposition=">职位搜索</a>				
    							
    				</p>
    			
    			</div>
    	</div>
    	<div class="mainbody">

    		<form action="Newjob" method="get" id="form">
    		<div id="app">
    		<div class="right_edit">
    			<div class="basebox">
    				<div class="editb1" id="etb1" style="display: block;padding: 0px 0px 0px 0px;" >		
    					<div class="cbox">
    						<div class="bline1" style="display: inline-block;">
    							<div class="c c2">
    								<label>职位名称</label>
    								<li>*</li>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="ef" name="companyposition"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							<div class="c c4">
    								<label>招收人数</label>
    									<li>*</li>
    								<div class="ntxt" style="width:214px;">
    									<input type="text" maxlength="20" class="ef" name="jobpeople"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    						
    						</div>
    						<div class="bline1" style="display: inline-block;">
    							<div class="c c2">
    								<label>工作经验</label>
    								<li>*</li>
    								<div class="ntxt">
    									<el-select v-model="value" placeholder="请选择" style="width: 203px;" name="gzjy">
									    <el-option
									      v-for="item in options"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								
    								</div>
    							</div>
    							<div class="c c4">
    								<label>工作地点</label>
    									<li>*</li>
    								<div class="ntxt">
    									<input type="text" class="area-danxuan" value="" data-value="" name="workadress" style="width: 198px;height: 28px;border: 1px solid #ddd;padding-left:14px;border-radius:5% ;" />
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							
    						
    						</div>
    						<div class="bline1" style="display: inline-block;">
    							<div class="c c2">
    								<label>薪水</label>
    								<li>*</li>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="ef" name="salary"/>	
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							<div class="c c4">
    								<label>详细工作地点</label>
    									<li>*</li>
    								<div class="ntxt">
    									<input type="text"  name="linkadress" style="width: 198px;height: 28px;border: 1px solid #ddd;padding-left:14px;border-radius:5% ;" />
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    						</div>
    						<div class="bline1" style="display: inline-block;">
    							<div class="c c2">
    								<label>学历要求</label>
    								<li>*</li>
    								<div class="ntxt">
    									<el-select v-model="value2" placeholder="请选择" style="width: 203px;" name="educationbackground">
									    <el-option
									      v-for="item in options2"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								
    								</div>
    							</div>
    						</div>
    						<div class="bline1"  style="height: 150px;">
    							<div class="c c2" style="float: none;">
    								<label>职位信息</label>
    								<li>*</li>
    								<textarea style="width: 400px;height: 150px;overflow-x: hidden;" name="occupatroninfo">
    									
    									
    								</textarea>
    							</div>
    						</div>
    						<div class="bline1" style="height: 150px;">
    							<div class="c c2" style="float: none;">
    								<label>招聘要求</label>
    								<li>*</li>
    								<textarea style="width: 400px;height: 150px;overflow-x: hidden;" name="recruitmentrequirement">
    									
    									
    								</textarea>
    							</div>
    						</div>
    						<div class="bline1" style="height: 150px;">
    							<div class="c c2" style="float: none;">
    								<label>其它要求</label>
    								<li>*</li>
    								<textarea style="width: 400px;height: 150px;overflow-x: hidden;" name="other">
    									
    									
    								</textarea>
    							</div>
    						</div>
    						
    					
    					</div>
    					<div class="btn1" id="boxbt1"style="margin-left: 95px;">
				    				<button class="save moveb" type="submit">保存</button>
							</div>
    					
    				</div>
    			</div>  		
	    		<!--132131231231_________________________________________________________________-->
	    		</form>
    		</div>
    		<div class="tipbgcolor"></div>
    		<div class="tip">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>确认删除此条信息吗？</p>
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
						</div>
	    		</div>
    		</div>

    		</div>
    		
    		
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script type="text/javascript" src="js/City_data.js"></script>
	<script type="text/javascript" src="js/areadata.js"></script>
	<script type="text/javascript" src="js/auto_area.js"></script>
	<script src="https://unpkg.com/vue/dist/vue.js"></script>
	<script src="https://unpkg.com/element-ui@2.0.11/lib/index.js"></script>
	<script type="text/javascript" src="js/mrelement.js"></script>
	<script type="text/javascript" src="js/load_hycode.js"></script>
	<script type="text/javascript" src="js/hgz_hycode.js"></script>
	<script type="text/javascript" src="js/hgz_zncode.js"></script>
	<script type="text/javascript" src="js/cropper.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	<script>
		$(function(){
				$("#form").validate({
					errorElement:"em",
			errorPlacement:function(error,element){
			element.parent().parent().find(".info").append(error)
		
		},
		
		highlight:function(a){
			$(a).parent().parent().find(".info").removeClass("ok").addClass("error")
	
		},
		
		success:function(e){
			e.parent().removeClass("error")		
	
		},
		
		rules:{
			companyposition:{
				required:true,
				maxlength:20
			},
			
			jobpeople:{
				required:true,
				maxlength:20
			},
			workadress:{
				required:true,
				maxlength:20
			},
			salary:{
				required:true,
				maxlength:20
			},
			linkadress:{
				required:true,
				maxlength:20
				
			}
			
			
		},
		messages:{
			companyposition:{
				required:"职位名称必须填写",
				maxlength:"输入不能大于20个字"
				
				
			},
			jobpeople:{
				required:"招聘人数必须填写",
				maxlength:"输入不能大于20个字"
				
			},
			workadress:{
				required:"工作地必须填写",
				maxlength:"输入不能大于20个字"
			},
			salary:{
				required:"薪水必须填写",
				maxlength:"输入不能大于20个字"
				
			},
			linkadress:{
				required:"详细工作地址必须填写",
				maxlength:"输入不能大于20个字"
				
			}
			
		}
				
				})
				
			})
			
			
		</script>
</html>