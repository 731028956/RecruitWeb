<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     	
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/font.css" />
        <link rel="stylesheet" href="css/showrecruit.css" />
        <link rel="stylesheet" href="css/themethree.css"/>
          <style>
 	   pre{
           white-space:pre-wrap;
           white-space:-moz-pre-wrap;
           white-space:-pre-wrap;
          white-space:-o-pre-wrap;
          word-wrap:break-word;
       	 }
    </style>
    </head>

    <body>
    
    	<div class="head4" style="border: none;">
    		<div class="headico"> 
    			<a  href="#">
    				<img src="img/title.png" class="ico" />
    				
    				
    			</a>
  				
    		</div>
    		<div class="down">
    			
    			<span class="paint" onclick="printDoc()">打印</span>
  				<span id="download">下载</span>
    			
    		</div>
    		
    	</div>
    	<div id="pagecontent">
    	<div class="head4" style="background-color: #008080; color: white;">
    			
    		<div class="person">
    			<img src="${pageContext.request.contextPath}/img/<s:property value="#request.image"/>?temp=<%=Math.random()%>" class="face" />
    			
    			
    		</div>
    		<div class="info">
    			<div class="uname">
    				<s:property value="#request.user.username"/>
    			</div>
    			<div>
    				<ul>
	    				<li class="top1">
	    					<img src="img/point.png" width="20px" height="20px" />
	    					<span style="vertical-align:top"><s:property value="#request.resume.workstate" /></span>			
	    				</li>
	    				<li class="top1">
	    					<img src="img/mail.png" width="20px" height="20px" />
	    					<span style="vertical-align:top"><s:property value="#request.user.useremail"/></span>		
	    				</li>
	    				<li class="top1">
	    					<img src="img/iphone.png" width="20px" height="20px" />
	    					<span style="vertical-align:top"><s:property value="#request.user.userphone"/></span>
	    				</li>
    				</ul>
    			</div>
    			<br>
    			<div class="top2">
    			<img src="img/person.png" width="20px" height="20px" />
    			<span style="vertical-align:top"><s:property value="#request.user.sex" />|<s:property value="#request.user.age" /> (<s:date name="#request.user.birthday" format="yyyy-MM-dd"/>)|现居住<s:property value="#request.user.adress"/>|<s:property value="#request.user.gzjy" /></span>
    			</div>
    		</div>
    		
    		
    	</div>
    	<div class="head4">
    		<div class="titleleft">求职意向</div>
    		<table class="mleft">    			
    			<tr>
    				<td class="sleft">期望薪资：</td>
    				<td class="sright"><s:property value="#request.resume.salary" /></td>
    				
    			</tr>
    			<tr>
    				<td class="sleft">职位：</td>
    				<td class="sright"><s:property value="#request.resume.ExpectPosition" /></td>
    				
    			</tr>
    			<tr>
    				<td class="sleft">到岗时间：</td>
    				<td class="sright"><s:property value="#request.resume.dgsj" />	 </td>
    				
    			</tr>
    		</table>
    		<table class="mleft">
    			
    				
    				<!--<div><div class="sleft">期望薪资：</div><div class="sright">	2000-2999 元/月</div></div>
    				<div><div class="sleft">职能/职位：</div><div class="sright">		软件工程师  电子软件开发(ARM/MCU...)  Java开发实习生 前段开发实习生软件工程师  电子软件开发(ARM/MCU...)  Java开发实习生 前段开发实习生软件工程师  电子软件开发(ARM/MCU...)  Java开发实习生 前段开发实习生软件工程师  电子软件开发(ARM/MCU...)  Java开发实习生 前段开发实习生</div></div>
    				<div><div class="sleft">期望薪资：</div><div class="sright">	2000-2999 元/月</div></div>-->
    			
    			<tr>
    				<td class="sleft">工作地点：</td>
    				<td class="sright"><s:property value="#request.resume.workplace" /></td>
    				
    			</tr>
    			<tr>
    				<td class="sleft">行业：</td>
    				<td class="sright"><s:property value="#request.resume.ExpectIndustry" /></td>
    				
    			</tr>
    			<tr>
    				<td class="sleft">工作类型：</td>
    				<td class="sright"><s:property value="#request.resume.widcheck" /></td>
    				
    			</tr>
    		</table>
    		
    	
    	</div>
    	<div class="head4">
    		<div class="titleleft">工作经验</div>
    		<s:iterator value="#request.workexperiences" var="m" status="s">
    		<table class="m2left">
    			<tr>
    				<td class="s2left"><s:date name="#m.wstartdate" format="yyyy/MM/dd"/>-<s:date name="#m.wenddate" format="yyyy/MM/dd"/></td>	
				
    				<td class="s2right"> <s:property value="#m.companyname" /></td>
    			</tr>
    			<tr>
    				<td>
    					<s:property value="#m.industry" /></b>&nbsp;|&nbsp;<s:property value="#m.zwlb" />&nbsp;|&nbsp;<s:property value="#m.position" />
    					
    				</td>
    				
    			</tr>
    			
    			<tr>
    				<td class="sleft">项目描述:</td>
    			<td class="s2right"><pre><s:property value="#m.workdescribe" /></pre></td>
    				
    			</tr>
    			
    		</table>
    		</s:iterator>
    	</div>
    	<div class="head4">
    		<div class="titleleft">教育经历</div>
    		<s:iterator value="#request.educationbackground" var="m" status="s">
    		<table class="m2left">
    			<tr>
    				<td class="s2left"><s:date name="#m.sstartdate" format="yyyy/MM/dd"/>-<s:date name="#m.senddate" format="yyyy/MM/dd" /></td>	
				
    				<td class="s2right"><s:property value="#m.schoolname" /></td>
    			</tr>
    			<tr>
    				<td>
    					<s:property value="#m.educationbackground" />|<s:property value="#m.zhuanye" />
    					
    				</td>
    				
    			</tr>			
    		</table>
    			</s:iterator>
    	</div>
    	</div>
    	<div class="tipbgcolor"></div>
    		<div class="tip" id="tip1">
    			<div class="stip">导出简历</div>
	    		<div class="tipcontent">
		    			<p>选择下载简历的格式</p>
		    			<div style="margin:0px auto; height:20px;width:300px;padding-top:20px">
		    			
		    			<span><input type="radio" value="html" name="load" id="html"> <label for="html" style="cursor:pointer"> Html格式</label></span>
		    			
		    			<span style="padding-left:90px;" class="word-export"> <input type="radio" value="world" name="load" id="world"> <label for="world" style="cursor:pointer">world文档格式</label></span>
		    			</div>
		    			
		    			<div class="btntip">
				    				<button class="savetip" type="submit">确认</button>
				    				<span class="canceltip">取消</span>
						</div>

	    		</div>
    	</div>
 	</body>
 	 <script type="text/javascript" src="js/jquery.min.js"></script>
 	 <script type="text/javascript" src="js/FileSaver.js"></script>
	<script type="text/javascript" src="js/jquery.wordexport.js"></script>
 	 <script>
 	  function printDoc(btn){                     //打印功能
          window.print();                         //调用window的打印函数
      }
	  $("#download").click(function(){
		$(".tipbgcolor").css("display","block"); 
		$("#tip1").css("display","block"); 
  
	  })	
	  $(".canceltip").click(function(){
		$(".tipbgcolor").css("display","none"); 
		$("#tip1").css("display","none"); 
	  })
	  $(function() {
    $(".word-export").click(function() {
        $("#pagecontent").wordExport("fileName");
        //fileName为导出的word文件的命名
    });
});
	
 	 </script>
 	   <script>
 	  $("#html ").click(function(){
 		 var userAgent = navigator.userAgent;
 		 var strContent = document.getElementsByTagName('html')[0].outerHTML;
 		 if(userAgent.indexOf("MSIE") > -1){
 		 var winName = window.open('', '_blank','');
 		 winName.document.open('text/html', 'replace');
 		 winName.document.write(strReportText);
 		 winName.document.execCommand('SaveAs');
 		 winName.close();
 		 }else{
 		 ExportFile("signinform.html", strReportText);
 		 }
 		 });
	  </script>
</html>