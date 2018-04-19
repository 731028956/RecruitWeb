<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
        <link rel="stylesheet" href="css/themethree.css"/>
        <link rel="stylesheet" href="css/cropper.min.css">
    	<link rel="stylesheet" href="css/ImgCropping.css">
        <style>
        	.el-input__inner{height: 32px;}
        	.el-input__prefix{top:-4px}
        	#n1 .el-input__inner{width: 214px;}
        	.el-input__suffix{right: initial;left: 180px;}
        	#n10 .el-input__inner{height: 38px;}
        	#n3 i{left: -15px;top: 7px;}
        	pre{ white-space:pre-wrap; white-space:-moz-pre-wrap; white-space:-pre-wrap; white-space:-o-pre-wrap;  word-wrap:break-word; }
        em{font-style: normal;line-height: 40px;}
			em.error{ color:red;}
			.ok i{ width:20px; height:20px; display:inline-block; background:url(img/ok.png); background-size:100%;}
			.error b{ width:12px; height:12px; display:inline-block; background:url(img/error.png); background-size:100%;}
			.errorborder{border-color: red;} 
		.adressinput{ width: 198px;height: 28px; border: 1px solid rgb(221, 221, 221);padding-left: 14px; border-radius: 5%;}
        </style>
    </head>
    <body>
    	<div class="nag">
    			<div style="height: 56px;width: 1000px;margin: 0px auto;">
    				<a href="#">
    				<img  src="img/title.jpg" class="logo"/>
    				</a>
    				<p class="link_to">				
    						<a href="index.jsp">首页</a>
    						<a href="">职位搜索</a>
    						<a href="">地区频道</a>					
    				</p>
    			
    			</div>
    	</div>
    	<div class="mainbody">
    		<div class="nagmr">
    			<div class="topnag">
    				<div class="rwname">
    				<form method="get" action="Updateresume" id="updateform">
    					<p class="ntk">
    						<span class="ntkname"><input type="text" value='<s:property value="#session.resume.resumename"/>' name="resumename" class="ntktext" disabled="disabled" id="resumename"/></span>
							<span class="editicon1" id="edit1"></span>
    					</p>	
    					<input type="hidden" value='<s:property value="#session.user.userid"/>' id="userid">
    					<div class="info">
	    					<b></b>
	    				</div>
    				</div>  				
    				<div class="rwbtn" style="display: none;" id="have">
    						<button class="reflash" type="button" id="submitform">保存</button>
    						<span class="reflash yulan" id="cancel">取消</span>
    						
    				</div>
    				</form>
    				<div class="rwcup">
    					<div class="newtime">
    						更新：
    						<span id="" style="color: #666;"><s:date name="#session.resume.updatedate" format="yyyy-MM-dd"/></span>
    						
    					</div>
    				</div>
    				<div class="rwbtn">
    						<span class="reflash">刷新</span>
    						<a href="showrecruit.jsp"  class="reflash yulan">预览</a>
    						
    				</div>
    				
    				
    			</div>
    			
    		</div>	
    		<div id="app">
    		<div class="right_edit">
    			<div class="basebox">
    				<!---->
    				<div class="base1" id="baseif">
    					<div class="face">
    						<img style="width: 85px;height: 104px;" src="${pageContext.request.contextPath}/img/<s:property value="#session.image"/>?temp=<%=Math.random()%>" id="img1"/>
    		
    					</div>
    					<span class="editicon1" id="edit2"></span>
    					<span class="unediticon" id="unedit2"></span>
    					<div class="bname" id="username"><s:property value="#session.user.username" /></div>
    						<input type="hidden" value='<s:property value="#session.user.gzjy" />' id="gzjy"> 
    						<input type="hidden" value='<s:property value="#session.resume.workstate" />' id="workstate"> 
    						<input type="hidden" value='<s:date name="#session.user.birthday" format="yyyy-MM-dd"/>' id="birthday"> 
    						<p class="at">现居住地：<s:property value="#session.user.adress"/>&nbsp;│&nbsp;<s:property value="#session.user.gzjy" />&nbsp;│&nbsp;<s:property value="#session.user.sex" />&nbsp;│&nbsp;<s:property value="#session.user.age" /> (<s:date name="#session.user.birthday" format="yyyy-MM-dd"/>)&nbsp;│&nbsp;<s:property value="#session.resume.workstate" /></p>
    						<div class="tab">
    							<span style="padding-left: 120px; vertical-align:top"><img src="img/mail.png" width="20px" height="20px" /><s:property value="#session.user.useremail"/></span>
    							<img src="img/iphone.png" width="20px" height="20px"/><span style="vertical-align:top"><s:property value="#session.user.userphone"/></span>
    						</div>
    					
    					
    				</div>
    				
    			<!---->
    			
    				<div class="editb1" id="etb1" style="display: none;">
    				<form action="Editmyinfo"   method="get" id="form">
    					<div class="face">
    						<img style="width: 85px;height: 104px;" id="finalImg" src="${pageContext.request.contextPath}/img/<s:property value="#session.image"/>?temp=<%=Math.random()%>"/>
    						<span class="esp" id="replaceImg">修改</span>|
    						<span class="esp">删除</span>
    						<input type="hidden" name="saveimage" id="si">
    						<input type="hidden" value='<s:property value="#session.image"/>' id="judgemiage"> 
    					</div>
    					
    					<div class="cbox">
    						<div class="bline1" style="display:inline-block;">
    							<div class="c c2">
    								<label>姓名</label>
    								<li>*</li>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="ef" name="username" value='<s:property value="#session.user.username" />'/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    								
    							</div>
    							<div class="c c4">
    								<label>性别</label>
    									<li>*</li>
    								<div class="btox" id="sexselect">
    									<input type="hidden" value='<s:property value="#session.user.sex" />' name="sex" id="sex">
    									<span class="btnn nan">男</span>
    									<span class="btnn nv">女</span>									
    								</div>
    							</div>
    						
    						</div>
    						<div class="bline1">
    							<div class="c c2">
    								<label>出生日期</label>
    								<li>*</li>
    								<div class="ntxt">
    									  <el-date-picker v-model="value3" type="date" placeholder="选择日期" name="birthday" style="width: 202px;">
									    </el-date-picker>
    								
    								</div>
    							</div>
    							<div class="c c4">
    								<label>工作经验</label>
    									<li>*</li>
    								<div class="ntxt" id="n1">
    								<el-select v-model="value" placeholder="请选择"  name="gzjy">
									    <el-option
									      v-for="item in options"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								
    								</div>
    							</div>
    						
    						</div>
    									<div class="bline1">
    							<div class="c c2">
    								<label>求职状态</label>
    								<li>*</li>
    								<div class="ntxt">
    									<el-select v-model="value1" placeholder="请选择" style="width: 203px;"  name="workstate">
									    <el-option
									      v-for="item in options1"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								
    								</div>
    							</div>
    							<div class="c c4">
    								<label>居住地</label>
    									<li>*</li>
    								<div class="ntxt">
    									<input type="text" class="area-danxuan adressinput" value='<s:property value="#session.user.adress" />' data-value="" name="adress"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							
    						
    						</div>
    						<div class="btn1" id="boxbt1">
				    				<button class="save moveb" type="submit" style="margin-left:160px;">保存</button>
				    				<span class="cancel" id="cancel1">取消</span>
							</div>
    					
    					</div>
    		
    					</form>
    				</div>
    			</div>
    			<hr />
    			<div class="basebox boxmt" id="jobit" >
	    					<div class="hd">
			    				<strong class="icons" id="Career">
			    				求职意向</strong>
			    				<span class="editicon1" id="edit3"></span>
			    				<span class="unediticon" id="unedit3"></span>
	    					</div>
	    				<div style="display: inline-block;" id="showit">
	    				<div class="bd" id="borderit">
	    					<div class="con">
	    						<div class="e e3">
	    							<label>
	    								期望薪资
									</label>
	    							<i>:</i>
	    							<div>
	    								<s:property value="#session.resume.salary" />					
	    							</div>
	    						</div>
	    						<div class="e e3">
	    							<label>
	    								工作地点
									</label>
	    							<i>:</i>
	    							<div>
	    								<span class="ong"><s:property value="#session.resume.workplace" /></span>				
	    							</div>
	    						</div>
	    						<div class="e e3">
	    							<label>
	    								职       能
									</label>
	    							<i>:</i>
	    							<div>
	    								<s:property value="#session.resume.ExpectPosition" />				
	    							</div>
	    						</div>
	    						<!--<div class="e e3">
	    							<label>
	    								职        位
									</label>
	    							<i>:</i>
	    							<div>
	    								<span class="ong">南京</span>				
	    							</div>
	    						</div>-->
	    						<div class="e e3">
	    							<label>
	    								行        业
									</label>
	    							<i>:</i>
	    							<div>
	    								<s:property value="#session.resume.ExpectIndustry" />					
	    							</div>
	    						</div>
	    						<div class="e e3">
	    							<label>
	    								工作类型
									</label>
	    							<i>:</i>
	    							<div>
	    								<span class="ong" id="widcheck"><s:property value="#session.resume.widcheck" /></span>				
	    							</div>
	    						</div>
	    						<div class="e e3">
	    							<label>
	    								到岗时间
									</label>
	    							<i>:</i>
	    							<div>
	    								<span id="dgsj"><s:property value="#session.resume.dgsj" /></span>					
	    							</div>
	    						</div>
	    					
	    						<div class="e e3"style="width: 400px;">
	    							<label>
	    								自我评价
									</label>
	    							<i>:</i>
	    							<div style="min-height:30px;">
	    								<pre><s:property value="#session.resume.selfdescribe" /></pre>		
	    							</div>
	    							
	    						</div>
	    						
	    					</div>
	    				</div>
	    					<form action="Edititinfo" id="form1">
    						<div class="con" id="editit" style="display: none;">
    						<div style="display:inline-block;">
    							<div class="c lf" >
    							
    								<label>期望薪资</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="edinput" name="salary" value='<s:property value="#session.resume.salary" />' id="salary"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    								
    							</div>
    							<div class="c" >
    							
    								<label>工作地点</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" class="area-duoxuan edinput" value='<s:property value="#session.resume.workplace" />' data-value="" name="workplace"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    								
    							</div>
    						</div>
    							<div class="c lf">
    							
    								<label>职位</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" class="edinput" value='<s:property value="#session.resume.ExpectPosition" />	'  name="ExpectPosition"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    								
    							</div>
    							<!--<div class="c">
    							
    								<label>职位</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="edinput" />
    								
    								</div>
    							</div>-->
    							<div class="c">
    							
    								<label>行业</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" class="nation edinput" value='<s:property value="#session.resume.ExpectIndustry" />' data-value=""  onclick="appendhybar(this,'duoxuan')" name="ExpectIndustry" />
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    								
    							</div>
    							<div class="c" style="width: 100%;">
    							
    								<label>自我评价</label>
    							
    								<i>*</i>
    								<div class="ntxt" style="width: 560px;">
    									<textarea type="" maxlength="" class="" name="selfdescribe"><s:property value="#session.resume.selfdescribe" /></textarea>
    								
    								</div>
    							</div>
    							<div class="c">
    							
    								<label>到岗时间</label>
    							
    								<i>*</i>
    								<div class="ntxt" id="n3">
    									<el-select v-model="value5" placeholder="请选择"  name="dgsj">
									    <el-option
									      v-for="item in options3"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								
    								</div>
    							</div>
    							<div class="c">
    							
    								<label>工作类型</label>
    							
    								<i>*</i>
    								<div class="ntxt" id="n3">
    									<el-select v-model="value6" placeholder="请选择"  name="widcheck">
									    <el-option
									      v-for="item in options4"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
									 </el-select>
    								</div>	
    							</div>
    							<div class="btn1" id="boxbt2">
				    				<button class="save moveb" type="submit">保存</button>
				    				<span class="cancel" id="cancel2">取消</span>
								</div>
    						</div>
    						</form>
	    			</div>
	    		</div>
	    			<hr />
	    		<form action="Editedubg" id="form2">
	    		<div class="basebox boxmt" id="edbg" >
	    			<div class="hd">
			    				<strong class="icons" id="Career">
			    				教育经历</strong>
			    				<span class="new" id="neweduction" >+新建教育</span>
			    				<span class="newover" id="overneweduction" >+新建教育</span>
			    				
	    			</div>
	    			
	    					<div class="con" id="editedbg" style="display: none;">
    							<div class="cschool" style="width: 420px;height: 38px;">
    							
    								<label>时间</label>
    							
    								<i class="i1">*</i>
    								<div class="ntxt">
    								<el-date-picker
									      v-model="value4"
									      type="daterange"
									      range-separator="至"
									      start-placeholder="开始日期"
									      end-placeholder="结束日期" style="width: 421px;height: 38px;" name="re">
									</el-date-picker>
    								
    								</div>
    							</div>
    							<div class="cschool" style="width: 420px;height: 38px;">
    							
    								<label>学校</label>
    							
    								<i class="i1">*</i>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="edinput" style="height: 34px;"name="schoolname" id="editsn"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							<div class="cschool"style="width: 200px;height: 34px;">
    							
    								<label>学历/学位</label>
    							
    								<i class="i1">*</i>
    								<div class="ntxt" id="n10">
    									<el-select v-model="value2" placeholder="请选择" style="width: 211px;" name="educationbackground">
									    <el-option
									      v-for="item in options2"
									      :key="item.value"
									      :label="item.label"
									      :value="item.value">
									    </el-option>
								 		</el-select>
    								</div>
    							</div><br/>
    							<div class="cschool"style="width: 210px;height: 34px;">
    							
    								<label>专业</label>
    							
    								<i class="i1">*</i>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="edinput" style="height: 34px;" name="zhuanye" id="editzy"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							
    							<div class="btn1" id="boxbt2">
				    				<button class="save" type="submit" style="border:none;">保存</button>
				    				<span class="cancel" id="cancel3">取消</span>
								</div>
    						</div>
	    			
	    			
	    			<div id="education">
	    				<div class="bd">
	    					<div class="con" id="eduction1">	
	    					 <input type="hidden" name="eid" value="0" id="eid"/>
	    					<s:iterator value="#session.educationbackground" var="m" status="s">
	    						<div class="sp spon" >
	    						<i class="i2">*</i>
	    								<input type="hidden" value='<s:property value="#m.id" />' id="sid"/>
	    						    	<div style="width: 150px;"class="listdiv"><s:date name="#m.sstartdate" format="yyyy/MM/dd"/>-<s:date name="#m.senddate" format="yyyy/MM/dd" /></div>
	    						    	<div style="width: 160px;"class="listdiv" id="schoolname"> <s:property value="#m.schoolname" /></div>
	    						    	<div style="width: 140px;"class="listdiv"id="zhuanye"><s:property value="#m.zhuanye" /></div>
	    						    	<div style="width: 80px;"class="listdiv" id="xuewei"><s:property value="#m.educationbackground" /></div>
	    						    	<span class="editicon1" id="edit4" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="unediticon" id="unedit4"style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="delet" id="delet1" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="undelet" id="undelet1" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    						</div>
	    						<hr color="#F3F3F3">
	    					</s:iterator>
	    						<!--<div class="sp spon">
	    						<i class="i2">*</i>
	    						    	<div style="width: 140px;"class="listdiv">2012/1.1-2012/2.2312</div>
	    						    	<div id="cs123" style="width: 160px;"class="listdiv"> Rutgers, the State University of New Jersey at New Brunswick</div>
	    						    	<div style="width: 140px;"class="listdiv">电子科学预计是1232</div>
	    						    	<div style="width: 90px;"class="listdiv">MBA</div>
	    						    	<span class="editicon1" id="edit4" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="unediticon" id="unedit4"style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="delet" id="delet1" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="undelet" id="undelet1" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    						    	
	    						</div>-->
	    					
	    					</div>
	    				
	    				
	    				</div>
	    			
	    			</div>
	    			
	    		</div>
	    		</form>
	    			<hr />
	    		<!--132131231231_________________________________________________________________-->
	    		<form action="Editwe" id="form3">
	    		<div class="basebox boxmt" id="gzjl" >
	    			<div class="hd">
			    				<strong class="icons" id="Career">
			    				工作经验</strong>
			    				<span class="new" id="newwork" >+新建经历</span>		
			    				<span class="newover" id="overnewwork" >+新建经历</span>
	    			</div>
	    			
	    					<div class="con" id="editedbgwork" style="display: none;">
	    						<div style="display:inline-block;">
	    						<div class="c lf">
    							
    								<label>公司名称</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="edinput" name="companyname" id="editcy"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							
    							<div class="c">
    							
    								<label>职能</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" class="nation edinput" value="" data-value=""  onclick="appendhyznbar(this,'danxuan')" name="zwlb" id="editzwlb"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							</div>
    							<div style="display:inline-block;">
    							<div class="c lf">
    								
    								<label>职位</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" maxlength="20" class="edinput" name="position" id="editpt"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							
    							<div class="c">
    							
    								<label>行业</label>
    							
    								<i>*</i>
    								<div class="ntxt">
    									<input type="text" class="nation edinput" value="" data-value=""  onclick="appendhybar(this,'danxuan')" name="industry" id="editis"/>
    								
    								</div>
    								<div class="info">
	    								<b></b>
	    							</div>
    							</div>
    							</div>
    							<div class="cschool" style="width: 420px;height: 38px;">
    							
    								<label>时间</label>
    							
    								<i class="i1">*</i>
    								<div class="ntxt">
    								<el-date-picker
									      v-model="value7"
									      type="daterange"
									      range-separator="至"
									      start-placeholder="开始日期"
									      end-placeholder="结束日期" style="width: 530px;height: 38px;" name="st">
									</el-date-picker>
    								
    								</div>
    							</div>
    							<div class="c" style="width: 100%;">
    							
    								<label>工作描述</label>
    							
    								<i>*</i>
    								<div class="ntxt" style="width: 560px;">
    									<textarea type="" maxlength="" class=""name="workdescribe" id="editwd"></textarea>
    								
    								</div>
    							</div>
				
    							<div class="btn1" id="boxbt2">
				    				<button type="submit" class="save moveb" >保存</button>
				    				<span class="cancel" id="cancel4">取消</span>
								</div>
    						
    						</div>
	    			
	    			
	    			<div id="gujlshow">
	    				<div class="bd">
	    					<div class="con" id="gujlshow1">
	    					 <input type="hidden" name="wid" value="0" id="wid"/>
	    						<s:iterator value="#session.workexperiences" var="m" status="s">
	    						<div class="sp spon">
	    						<i class="i2">*</i>
	    						<div>
	    								<input type="hidden" value='<s:property value="#m.id" />' id="ewid"/>
	    						    	<div style="width: 150px;"class="listdiv"><s:date name="#m.wstartdate" format="yyyy/MM/dd"/>-<s:date name="#m.wenddate" format="yyyy/MM/dd"/></div>
	    						    	<div style="width: 160px;"class="listdiv" id="companyname">  <s:property value="#m.companyname" /></div>
	    						    	<span class="editicon1" id="edit5" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="unediticon" id="unedit5"style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="delet" id="delet2" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="undelet" id="undelet2" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    						</div>
	    						
	    								<div style="width: 600px;"class="listdiv"><b style="font-weight: normal" id="industry"><s:property value="#m.industry" /></b>&nbsp;|&nbsp;<b style="font-weight: normal" id="zwlb"><s:property value="#m.zwlb" /></b>&nbsp;|&nbsp;<b style="font-weight: normal" id="position"><s:property value="#m.position" /></b></div><br>
	    						    	<span style="padding-left: 0px;">工作描述:</span>
	    						    	<div style="width: 650px;"class="listdiv" id="workdecribe"><pre> <s:property value="#m.workdescribe" /></pre></div>
	    						</div>
	    							<hr color="#F3F3F3">
	    						</s:iterator>
	    						<!--<div class="sp spon">
	    						<i class="i2">*</i>
	    						    	<div style="width: 140px;"class="listdiv">2012/1.1-2012/2.2312</div>
	    						    	<div id="cs123" style="width: 160px;"class="listdiv"> Rutgers, the State University of New Jersey at New Brunswick</div>
	    						    	<div style="width: 140px;"class="listdiv">电子科学预计是1232</div>
	    						    	<div style="width: 90px;"class="listdiv">MBA</div>
	    						    	<span class="editicon1" id="edit4" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="unediticon" id="unedit4"style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="delet" id="delet2" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    								<span class="undelet" id="undelet2" style="width: 15px;height: 15px;padding:0px;margin-top: 5px;"></span>
	    						    	
	    						</div>-->
	    					
	    					</div>
	    				
	    				
	    				</div>
	    			
	    			</div>
	    			
	    		</div>
	    		</form>
    		</div>
    		<form action="Deletresumeinfo">
    		<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>确认删除此条信息吗？</p>
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
						</div>
						<input type="hidden" value="0" id="deid" name="deid"/>
						<input type="hidden" value="0" id="dwid" name="dwid"/>

	    		</div>
    		</div>
    		</form>
    		<form>
    		<div class="tip" id="tip2">
    			<div class="stip">提示</div>
	    		<div class="tipcontent">
		    			<p>确认上传这张照片吗</p>
		    			<div class="btntip">
				    				<button class="savetip" type="button" onclick="sumitImageFile();ab()">确认</button>
				    	<span class="canceltip">取消</span>
						</div>
	    		</div>
    		</div>
    		</form>
    		<div style="display: none" class="tailoring-container">
  	  		<div class="black-cloth" onClick="closeTailor(this)"></div>
  			<div class="tailoring-content">
            <div class="tailoring-content-one">
                <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                    <input type="file" accept="image/jpg,image/jpeg,image/png" name="faceimg" id="chooseImg" class="hidden" onChange="selectImg(this)">
                    选择图片
                </label>
                <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
            </div>
            <div class="tailoring-content-two">
                <div class="tailoring-box-parcel">
                    <img id="tailoringImg">
                </div>
                <div class="preview-box-parcel">
                    <p>图片预览：</p>
                    <div class="square previewImg"></div>
                    <div class="circular previewImg"></div>
                </div>
            </div>
            <div class="tailoring-content-three">
                <button class="l-btn cropper-reset-btn">复位</button>
                <button class="l-btn cropper-rotate-btn">旋转</button>
                <button class="l-btn cropper-scaleX-btn">换向</button>
                <button class="l-btn sureCut" id="sureCut">确定</button>
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
 			var jugde=$("#judgemiage").val();
 			
 			if(jugde==""){
 				$("#img1").attr("src","img/default_user_90x110.png")
 				$("#finalImg").attr("src","img/default_user_90x110.png")
 				
 			}
 			var i=1,k=1,m=1,l=1,j=1
 			//var xuewei;
			var salary=$("#salary").val();
 			if(salary==""){
 				$("#showit").css("display","none");
 			}
 			
 		
 			var rn=$(".ntktext").val();
 			$(".nagmr").hover(function(){
 				$(".topnag").addClass("bordco");
 				if(i==1){
 				$("#edit1").css("display","block"); 				
				}
 			},function(){
 			$(".topnag").removeClass("bordco");
 			$("#edit1").css("display","none");
 			if(i==2){
 				$(".topnag").addClass("bordco");	
 			}
 			}
 			)	
 			$("#edit1").click(function(){
 				i=2;
 				$(".ntktext").removeAttr("disabled").addClass("ontext");;
 				$(".rwbtn").css("display","none");
   				$("#have").css("display","block");
   				$("#edit1").css("display","none");
 			})
 			$("#cancel").click(function(){
     			$(".rwbtn").css("display","block");
   				$("#have").css("display","none");
   				$("#edit1").css("display","block");
   				$(".ntktext").attr("disabled","disabled").val(rn).removeClass("ontext");
   				$("#updateform").find(".info").removeClass("error");
   				$("#updateform").find("em").remove();
   				i=1;
   			})
   			var sex=$("#sex").val();
 			if(sex=="男"){
 				$(".nan").css({"background-color":"#ff6000","color":"white"})
 				$(".nv").css({"background-color":"white","color":"black"})
 				
 			}else{
 				$(".nv").css({"background-color":"#ff6000","color":"white"})
 				$(".nan").css({"background-color":"white","color":"black"})
 				
 			}
 			$(".nan").click(function(){
 				$(this).css({"background-color":"#ff6000","color":"white"})
 				$(".nv").css({"background-color":"white","color":"black"})
 				$("#sex").val("男")
 				                                                                                                                                                            
 			})
 			$(".nv").click(function(){
 				$(this).css({"background-color":"#ff6000","color":"white"})
 				$(".nan").css({"background-color":"white","color":"black"})
 				$("#sex").val("女")
 				
 			})	
 			$("#baseif").hover(function(){
 			$(this).removeClass("base1");
 			$(this).addClass("bordco1");
 			if(k==1&&m==1&&l==1&&j==1){
 				$("#edit2").css("display","block"); 				
				}else{
				$("#unedit2").css("display","block"); 
				}
 			
 			},function(){
 				$(this).addClass("base1");
 				$(this).removeClass("bordco1");
 				$("#edit2").css("display","none");
 				$("#unedit2").css("display","none");
	 			if(k==2){
	 				$(this).addClass("bordco");	
	 			}
 				
 			})
 			$("#edit2").click(function(){
 				k=2;
 				$("#baseif").css("display","none");
   				$("#etb1").css("display","block");
   				$("#edit2").css("display","none");
   				$("#etb1").addClass("bordco1");
   				$("#neweduction").css("display","none");
   				$("#overneweduction").css("display","block");
   				$("#newwork").css("display","none");
   				$("#overnewwork").css("display","block");

 			})
// 			qw   cannel反值
 			$("#cancel1").click(function(){
 				$("#baseif").css("display","block");
   				$("#etb1").css("display","none");
   				$("#etb1").removeClass("bordco1");
   				$("#neweduction").css("display","block");
   				$("#overneweduction").css("display","none");
   				$("#newwork").css("display","block");
   				$("#overnewwork").css("display","none");
 				k=1;
 				
 			
 			})
 			$("#jobit").hover(function(){
 				$(this).removeClass("base1");
 				$(this).css("border","1px solid #FF6057");
	 			if(k==1&&m==1&&l==1&&j==1){
 				$("#edit3").css("display","block"); 				
				}
	 			else if(m==2){
					$("#unedit3").css("display","none"); 
					$(this).css("border","1px solid #FFF");	
					
				}else{
				$("#unedit3").css("display","block"); 
				}

 			},function(){
 				$(this).addClass("base1");
 				$(this).css("border","1px solid white");
 				$("#edit3").css("display","none");
 				$("#unedit3").css("display","none"); 
	 			if(m==2){
	 				$(this).css("border","1px solid #FFF");		
	 			}
 			
 			})
 			$("#edit3").click(function(){
 				m=2;
 				$("#showit").css("display","inline-block");
 				$("#borderit").css("display","none");
   				$("#editit").css("display","block");
   				$("#edit3").css("display","none");
   				$("#jobit").css("border","1px solid white");
   				$("#editit").css("border","1px solid #FF6057");	
   				$("#neweduction").css("display","none");
   				$("#overneweduction").css("display","block");
   				$("#newwork").css("display","none");
   				$("#overnewwork").css("display","block");
 			})
 			$("#cancel2").click(function(){
 				if(salary==""){
 	 				$("#showit").css("display","none");
 	 			}
 				$("#borderit").css("display","block");
   				$("#editit").css("display","none");
				$(".boxmt").css("border","1px solid white");
				$("#neweduction").css("display","block");
   				$("#overneweduction").css("display","none");
   				$("#newwork").css("display","block");
   				$("#overnewwork").css("display","none");
 				m=1;
 				
 			
 			})
 			$("#neweduction").click(function(){
 			
 				l=2;
   				$("#editedbg").css("display","block");
   				$("#edit4").css("display","none");
				$("#eduction1").css("border","1px solid white");
   				$("#editedbg").css("border","1px solid #FF6057");	
 				$(this).css("display","none");
 				$("#overneweduction").css("display","block");
 				$("#newwork").css("display","none");
   				$("#overnewwork").css("display","block");
 			})
// 			$("#eduction1").hover(function(){
// 				$(this).removeClass("base1");
// 				$(this).css("border","1px solid #FF6057");
//	 			if(k==1&&m==1&&l==1&&j==1){
// 				$("#edit4").css("display","block"); 				
//				}
//	 			else if(l==2){
//					$("#unedit4").css("display","none"); 
//					$(this).css("border","1px solid #FFF");	
//					
//				}else{
//				$("#unedit4").css("display","block"); 
//				}
// 			
// 			
// 			},function(){
// 				$(this).addClass("base1");
// 				$(this).css("border","1px solid white");
// 				$("#edit4").css("display","none");
// 				$("#unedit4").css("display","none");
//	 			if(l==2){
//	 					$(this).css("border","1px solid #FFF");	
//	 			}
// 			
// 			})
 			$(".sp").hover(function(){
 				$(this).removeClass("base1");
 				$(this).css("border","1px solid #FF6057");
	 			if(k==1&&m==1&&l==1&&j==1){
 				$(this).find("#edit4").css("display","block"); 	
 				$(this).find("#delet1").css("display","block");  
 				$(this).find("#edit5").css("display","block"); 	
 				$(this).find("#delet2").css("display","block");  
				}
	 			else if(l==2||j==2){
					$(this).find("#unedit4").css("display","none"); 
					$(this).find("#undelet1").css("display","none"); 
					$(this).find("#unedit5").css("display","none"); 
					$(this).find("#undelet2").css("display","none"); 
					$(this).css("border","1px solid #FFF");	
					
				}else{
					$(this).find("#unedit4").css("display","block"); 
					$(this).find("#undelet1").css("display","block"); 
					$(this).find("#unedit5").css("display","block"); 
					$(this).find("#undelet2").css("display","block"); 
				}
 			
 			
 			},function(){
 				$(this).addClass("base1");
 				$(this).css("border","1px solid white");
 				$(this).find("#edit4").css("display","none");
 				$(this).find("#unedit4").css("display","none");
 				$(this).find("#delet1").css("display","none");
 				$(this).find("#undelet1").css("display","none");
 				$(this).find("#edit5").css("display","none");
 				$(this).find("#unedit5").css("display","none");
 				$(this).find("#delet2").css("display","none");
 				$(this).find("#undelet2").css("display","none");
	 			if(l==2){
	 					$(this).css("border","1px solid #FFF");	
	 			}
 			
 			})
 			$(".sp #edit4").click(function(){
 				l=2;
 				var schoolname=$(this).parent().find("#schoolname").text();
 				var zhuanye=$(this).parent().find("#zhuanye").text();
 				var xuewei=$(this).parent().find("#xuewei").text();
 					
 				var id=$(this).parent().find("#sid").val();
   				$("#editedbg").css("display","block");
   				$("#edit4").css("display","none");
//				$("#eduction1").css("border","1px solid white");
   				$("#editedbg").css("border","1px solid #FF6057");
   				$("#neweduction").css("display","none");
   				$("#overneweduction").css("display","block");
   				$("#newwork").css("display","none");
   				$("#overnewwork").css("display","block");
   				$(this).parent().find("i").css("display","block");
   				$("#eid").val(id);
   				$("#editsn").val(schoolname);
   				$("#editzy").val(zhuanye);
 			})
 			$("#cancel3").click(function(){
   				$("#editedbg").css("display","none");
   				$("#neweduction").css("display","block");
   				$("#overneweduction").css("display","none");
   				$("#newwork").css("display","block");
   				$("#overnewwork").css("display","none");
   				$(".sp").find("i").css("display","none");
// 				$("#etb1").removeClass("bordco1");
				$("#eid").val(0);
				$("#editsn").val("");
   				$("#editzy").val("");
 				l=1;
 				
 			
 			})
 			$("#newwork").click(function(){
 			
 				j=2;
   				$("#editedbgwork").css("display","block");
   				$("#edit5").css("display","none");
				$("#gujlshow1").css("border","1px solid white");
   				$("#editedbgwork").css("border","1px solid #FF6057");	
   				$(this).css("display","none");
 				$("#overnewwork").css("display","block");
 				$("#neweduction").css("display","none");
   				$("#overneweduction").css("display","block");
 			})
// 			$("#gujlshow1").hover(function(){
// 				$(this).removeClass("base1");
// 				$(this).css("border","1px solid #FF6057");
//	 			if(k==1&&m==1&&l==1&&j==1){
// 				$("#edit5").css("display","block"); 				
//				}
//	 			else if(j==2){
//					$("#unedit5").css("display","none"); 
//					$(this).css("border","1px solid #FFF");	
//					
//				}else{
//				$("#unedit5").css("display","block"); 
//				}
// 			
// 			
// 			},function(){
// 				$(this).addClass("base1");
// 				$(this).css("border","1px solid white");
// 				$("#edit5").css("display","none");
// 				$("#unedit5").css("display","none");
//	 			if(j==2){
//	 					$(this).css("border","1px solid #FFF");	
//	 			}
// 			
// 			})
 			$(".sp #edit5").click(function(){
 				j=2;
 				var companyname=$(this).parent().find("#companyname").text();
 				var industry=$(this).parent().parent().find("div").find("#industry").text();
 				var zwlb=$(this).parent().parent().find("div").find("#zwlb").text();
 				var position=$(this).parent().parent().find("div").find("#position").text();
 				var workdecribe=$(this).parent().parent().find("#workdecribe").text();
 				var id2=$(this).parent().parent().find("#ewid").val();
 				
   				$("#editedbgwork").css("display","block");
   				$("#edit5").css("display","none");
				$("#gujlshow1").css("border","1px solid white");
   				$("#editedbgwork").css("border","1px solid #FF6057");
   				$("#neweduction").css("display","none");
   				$("#overneweduction").css("display","block");
   				$("#newwork").css("display","none");
   				$("#overnewwork").css("display","block");
   				$(this).parent().parent().find("i").css("display","block");
   				$("#editcy").val(companyname);
   				$("#editis").val(industry);
   				$("#editpt").val(position);
   				$("#editwd").text(workdecribe);
   				$("#editzwlb").val(zwlb);
   				$("#wid").val(id2);
		
 			})
 			$("#cancel4").click(function(){
   				$("#editedbgwork").css("display","none");
   				$("#newwork").css("display","block");
   				$("#overnewwork").css("display","none");
   				$("#neweduction").css("display","block");
   				$("#overneweduction").css("display","none");
   				$(".sp").find("i").css("display","none");
// 				$("#etb1").removeClass("bordco1");
				$("#editcy").val("");
   				$("#editis").val("");
   				$("#editpt").val("");
   				$("#editwd").text("");
   				$("#editzwlb").val("");
   				$("#wid").val(0);
   				
 				j=1;
 				
 			
 			})
 			$(".sp #delet1").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");
 				var id=$(this).parent().find("#sid").val();
 				$("#deid").val(id);
 			
 			})
 			
 			$(".sp #delet2").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip1").css("display","block");
 				var id2=$(this).parent().parent().find("#ewid").val();
   				$("#dwid").val(id2);

 			
 			})
 			$(".canceltip").click(function(){
 				$(".tipbgcolor").css("display","none");
 				$("#tip1").css("display","none");
 				$("#tip2").css("display","none");
 				$("#dwid").val(0);
 				$("#deid").val(0);
 			})
 			
 		})
 		
 	</script>
 	<script type="text/javascript">

    //弹出框水平垂直居中
    (window.onresize = function () {
        var win_height = $(window).height();
        var win_width = $(window).width();
        var base64url;
        if (win_width <= 768){
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": 0
            });
        }else{
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": (win_width - $(".tailoring-content").outerWidth())/2
            });
        }
    })();

    //弹出图片裁剪框
    $("#replaceImg").on("click",function () {
        $(".tailoring-container").toggle();
    });
    //图像上传
    function selectImg(file) {
        if (!file.files || !file.files[0]){
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var replaceSrc = evt.target.result;
            //更换cropper的图片
            $('#tailoringImg').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真
        }
        reader.readAsDataURL(file.files[0]);
    }
    //cropper图片裁剪
    $('#tailoringImg').cropper({
        aspectRatio: 1/1.22,
        preview: '.previewImg',//预览视图
        guides: false,  //裁剪框的虚线(九宫格)
        autoCropArea: 0.5,  //0-1之间的数值，定义自动剪裁区域的大小，默认0.8
        movable: false, //是否允许移动图片
        dragCrop: true,  //是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
        movable: true,  //是否允许移动剪裁框
        resizable: true,  //是否允许改变裁剪框的大小
        zoomable: false,  //是否允许缩放图片大小
        mouseWheelZoom: false,  //是否允许通过鼠标滚轮来缩放图片
        touchDragZoom: true,  //是否允许通过触摸移动来缩放图片
        rotatable: true,  //是否允许旋转图片
        crop: function(e) {
            // 输出结果数据裁剪图像。
        }
    });
    //旋转
    $(".cropper-rotate-btn").on("click",function () {
        $('#tailoringImg').cropper("rotate", 45);
    });
    //复位
    $(".cropper-reset-btn").on("click",function () {
        $('#tailoringImg').cropper("reset");
    });
    //换向
    var flagX = true;
    $(".cropper-scaleX-btn").on("click",function () {
        if(flagX){
            $('#tailoringImg').cropper("scaleX", -1);
            flagX = false;
        }else{
            $('#tailoringImg').cropper("scaleX", 1);
            flagX = true;
        }
        flagX != flagX;
    });
	
    //裁剪后的处理
    $("#sureCut").on("click",function () {
        if ($("#tailoringImg").attr("src") == null ){
            return false;
        }else{
            var cas = $('#tailoringImg').cropper('getCroppedCanvas');//获取被裁剪后的canvas
            base64url = cas.toDataURL('image/png'); //转换为base64地址形式
            $("#finalImg").prop("src",base64url);//显示为图片的形式
		
            //关闭裁剪框
            closeTailor();
            $(".tipbgcolor").css("display","block");
				$("#tip2").css("display","block");				
        }
    });

    //关闭裁剪框
    function closeTailor() {
        $(".tailoring-container").toggle();
    }
    function sumitImageFile(base64Codes){  
        var form=document.forms[0];  
          
        var formData = new FormData();   //这里连带form里的其他参数也一起提交了,如果不需要提交其他参数可以直接FormData无参数的构造函数  
          
        //convertBase64UrlToBlob函数是将base64编码转换为Blob  
        formData.append("imageName",convertBase64UrlToBlob(base64url));  //append函数的第一个参数是后台获取数据的参数名,和html标签的input的name属性功能相同  
          
        //ajax 提交form  
        $.ajax({  
            url : "Updateimage",  
            type : "POST",  
            data : formData,  
            dataType:"text",  
            processData : false,         // 告诉jQuery不要去处理发送的数据  
            contentType : false,        // 告诉jQuery不要去设置Content-Type请求头  
              
            success:function(data){  
                window.location.href="${ctx}"+data;  
            },  
            xhr:function(){            //在jquery函数中直接使用ajax的XMLHttpRequest对象  
                var xhr = new XMLHttpRequest();  
                  
                xhr.upload.addEventListener("progress", function(evt){  
                    if (evt.lengthComputable) {  
                        var percentComplete = Math.round(evt.loaded * 100 / evt.total);    
                        console.log("正在提交."+percentComplete.toString() + '%');        //在控制台打印上传进度  
                    }  
                }, false);  
              
              
                return xhr;
            }  
              
        });  
    }  
    function convertBase64UrlToBlob(urlData){  
        
        var bytes=window.atob(urlData.split(',')[1]);        //去掉url的头，并转换为byte  
          
        //处理异常,将ascii码小于0的转换为大于0  
        var ab = new ArrayBuffer(bytes.length);  
        var ia = new Uint8Array(ab);  
        for (var i = 0; i < bytes.length; i++) {  
            ia[i] = bytes.charCodeAt(i);  
        }  
      
        return new Blob( [ab] , {type : 'image/png'});  
    }  
    var userid=$("#userid").val();
    var resumename=$("#resumename").val();
    function ab(){
    	window.setTimeout(function(){
    	window.location="Myrecruitweb.action?userid="+userid+"&resumename="+resumename;
    },200)}
</script>
	<script>
	$(function(){
				$("#updateform").validate({
					errorElement:"em",
					errorPlacement:function(error,element){
					element.parent().parent().parent().find(".info").append(error)	
					},
		
				highlight:function(a){
					$(a).parent().parent().parent().find(".info").removeClass("ok").addClass("error")
			
				},
		
				success:function(e){
					e.parent().removeClass("error")		
			
				},
		
					rules:{
						resumename:{
							required:true,
							maxlength:20
						}			
					},
					messages:{
						resumename:{
							required:"简历名必须填写",
							maxlength:"输入不能大于20个字"			
						}	
					}
							
				})
							
			})
			
			
		</script>
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
			username:{
				required:true,
				maxlength:20
				
				
			},
			
			adress:{
				required:true,
				maxlength:20
			}
			
		},
		messages:{
			username:{
				required:"姓名必须填写",
				maxlength:"输入不能大于20个字"
				
				
			},
			adress:{
				required:"居住地必须填写",
				maxlength:"输入不能大于20个字"
				
			}
			
		}
				
				})
				
			})
			
			
		</script>
		<script>
			$(function(){
				$("#form1").validate({
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
			salary:{
				required:true,
				maxlength:20
			},
			
			workplace:{
				required:true,
				maxlength:20
			},
			ExpectPosition:{
				required:true,
				maxlength:20
			},
			ExpectIndustry:{
				required:true,
				maxlength:20
			},
			selfdescribe:{
				maxlength:3000
			}
			
		},
		messages:{
			salary:{
				required:"期望工资必须填写",
				maxlength:"输入不能大于20个字"
				
			},
			workplace:{
				required:"工作地点必须填写",
				maxlength:"输入不能大于20个字"
				
			},
			ExpectPosition:{
				required:"期望职位必须填写",
				maxlength:"输入不能大于20个字"
			},
			ExpectIndustry:{
				required:"期望行业必须填写",
				maxlength:"输入不能大于20个字"
			},
			selfdescribe:{
				maxlength:"输入不能大于3000个字"
			}
		}
				
				})
				
			})
			
			
		</script>
			<script>
			$(function(){
				$("#form2").validate({
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
			schoolname:{
				required:true,
				maxlength:20
			},
			
			zhuanye:{
				required:true,
				maxlength:20
			}
			
			
		},
		messages:{
			schoolname:{
				required:"学校名必须填写",
				maxlength:"输入不能大于20个字"
				
				
			},
			zhuanye:{
				required:"专业必须填写",
				maxlength:"输入不能大于20个字"
				
			}
		}
				
				})
				
			})
			
			
		</script>
			<script>
			$(function(){
				$("#form3").validate({
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
			companyname:{
				required:true,
				maxlength:20
			},
			
			zwlb:{
				required:true,
				maxlength:20
			},
			position:{
				required:true,
				maxlength:20
			},
			industry:{
				required:true,
				maxlength:20
			},
			workdescribe:{
				maxlength:3000
				
			}
			
			
		},
		messages:{
			companyname:{
				required:"公司名必须填写",
				maxlength:"输入不能大于20个字"
				
				
			},
			zwlb:{
				required:"职能必须填写",
				maxlength:"输入不能大于20个字"
				
			},
			position:{
				required:"职位必须填写",
				maxlength:"输入不能大于20个字"
			},
			industry:{
				required:"行业必须填写",
				maxlength:"输入不能大于20个字"
				
			},
			workdescribe:{
				maxlength:"输入不能大于3000个字"
				
			}
			
		}
				
				})
				
			})
			
			
		</script>
		<script type="text/javascript">
		$("#submitform").click(function(){
				var params = {  
 		           editresume : $("#resumename").val() //文本框的id名字是typeName  
 		         
 		           
 		        };
				$.ajax({  
	     		    type: "POST",  
	     		    url: "Judgeresumename", //这里写的是action的名字,设置了namespace会出错  
	     		    data: params,  
	     		    dataType:"text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）  
	     		    success: function(json){    
	     		     //使用这个方法解析json  
	     		     //result是和action中定义的result变量的get方法对应的  
	     		     $("#updateform").submit();
	     		    	
	     		    },  
	     		    error: function(json){  
	     		     alert("已有该简历")
	     		     return false;  
	     		    }  
	     		 });  	
			})
		
		
		
		
		</script>
	
</html>