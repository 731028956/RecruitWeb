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
        <link rel="stylesheet" href="css/showjob.css" />
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
        <link rel="stylesheet" href="css/rp.css" />
        <link rel="stylesheet" href="css/stylemap.css">
       	<style>
       		.move{position: fixed; top: 0px;}
       		#resumeul>li{
 				display: none;
 				
 			}
			#resumeul:hover .moo{
 				display: block;
 				
 			}
 			
 			.moo{
 			height: 30px; 
 			border: 1px solid #DDDDDD;
 			line-height:30px;
 			}
 			#tip2{
 			display: none;
 				
 			}
       		
       	</style>
    </head>
    <body>
    	<div class="headbody">
    		<div class="bar">
    			<div class="user">
    				<span class="login"><a href="login.jsp">登录</a>/<a href="register.jsp">注册</a></span>
    				<ul id="ulxiala">
    					<li class="icon1" id="username">	
    						<a><s:property value="#session.user.username"/></a>
    					</li>
    					<li class="icon2"><a href="<s:url action="Recruitpage"/>">简历中心</a></li>
    					<li class="icon2"><a>我的申请</a></li>
    					<li class="icon2"><a href="Exit">退出账号</a></li>
    				</ul>	
    				<ul id="ulxialacp">
    					<li class="icon1" id="companyname">	
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
    						<a href="searchindex.jsp">职位搜索</a>
    								
    				</p>
    			
    			</div>
    		</div>
    		
    	</div>
    	<div class="mainbody">
    		<div class="worktitle">
    			<div style="width: 670px; float: left;">
    			<div class="lftitle">
    				<h1 style="float: left;">	
    					<s:property value="#request.job.companyposition"/>
    				</h1>
    				<span class="h1place">工作地址:<s:property value="#request.job.workadress"/></span>
    				<strong><s:property value="#request.job.salary"/></strong>
    			</div>
    				<div style="padding-top: 15px;padding-left: 20px;">
    				<span><s:property value="#request.job.companyname"/></span>
    				<span style="margin-left: 340px"><a href="Otherposition?companyid=<s:property value="#request.companyid"/>">该公司所有职位</a></span>
    				</div>
    				<div style="padding-top: 15px;padding-left: 20px; padding-bottom: 20px;"> 
    				<span><s:property value="#request.company.cpnature"/>   |  <s:property value="#request.company.scale"/>   |  <s:property value="#request.company.companyindustry"/></span>
    				</div>
    			</div>
    			<div style="width: 300px; float: right;display: inline-block;">
    				
    				<div class="sq" id="sq">
    					申请职位
    				</div>
    				<div class="stop" style="display:none">
    					停止招聘   				
    				</div>
    				
    			</div>
    		</div> 		
    		<div style="height:20px;"></div>
    		<div  class="mfmf">
    				<p>
    				
    					<s:property value="#request.job.gzjy"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招1人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;03-13发布
    					
    				</p>	
    		</div>
    		<div class="tftf">
    			<h1 class="ifif">职位信息</h1>
    		
    		
    			<p>岗位职责</p>
    			<div style="line-height: 50px; font-size: 14px;">
    				
    		   <pre  class="ppee"><s:property value="#request.job.occupatroninfo"/></pre>
				<p>岗位要求：</p><pre  class="ppee"><s:property value="#request.job.recruitmentrequirement"/></pre>
				<p>其他</p>
    			<pre  class="ppee"><s:property value="#request.job.other"/></pre>
    			
    			
    		</div>
    		<div class="tftf">
    			<h1 class="ifif">联系方式</h1>
				<div>
					上班地址：<s:property value="#request.job.linkadress"/>
					<span style="padding-left:10px;cursor: pointer;" id="ppp">位置</span>
				</div>
    		</div>
    		<div class="tftf">
    			<h1 class="ifif">公司信息</h1>
				<div>
					<span><pre  class="ppee"><s:property value="#request.company.profile"/></pre></span>		
				</div>
    		</div>
    	</div>
    	<input type="hidden" value='<s:property value="#request.job.state"/>' id="state"/>
    	<div class="tipbgcolor"></div>
    	<div id="tip2" style="width: 800px;" class="tip">
    		
    			<div class="stip" id="adress"><s:property value="#request.job.linkadress"/><span id="close" style="float: right;padding-right: 20px;">关闭</span></div><div style="display: none;"><span id="x"></span><span id="y"></span></div>
    			<div style="width: 100%;height: 400px;background-color: white;">
		    		
			    		<div id="container" style="position: absolute;top:auto;left: auto;bottom: auto;right: auto;"></div>
						<div id="panel"style="top: auto;"></div>
			    			   
		    		
	    		</div>
	    		
    	</div>
    	<div class="tip" id="tip1">
    			<div class="stip">提示</div>
    			<form method="post" name="form1"> 
    				
    				<input type="hidden" value='<s:property value="#request.job.id"/>' id="jobid"/>
    				<input type="hidden"  id="resumeid"/>
		    		<div class="tipcontent" style="position: relative;">
			    			<p >选择提交的简历</p>
			    			<div style="height: 70px;" id="getzhi"> 
			    				<ul style="position: absolute;top: 60px;left: 180px;padding-top: 20px;z-index: 10;background: white;" id="resumeul">
			    			 	<span style="border: 1px solid #DDDDDD;display: block;"><input type="text" style="height: 30px;background-color: white;border:none;width: 200px;" disabled="disabled" id="resumetext">
			    			 	<img src="img/font-8193.png" style="width: 36px;height: 18px;border-left: 1px solid #DDDDDD;margin-top: 10px;"></img></span>    			 	
	
			    				</ul>
			    			</div>
			    			<div class="btntip" style="padding-bottom: 40px;">					
					    	<button class="savetip" type="button" id="submitform1">确认</button>
					    	<span class="canceltip">取消</span>
							</div>
		    		</div>
	    		</form>
    		
    	</div>
    	
 	</body>
 	<script src="js/jquery.min.js"></script>
 	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="http://webapi.amap.com/maps?v=1.3&key=c93e1e293e5b1c3dc581f3ff633144d3&plugin=AMap.Autocomplete,AMap.PlaceSearch,AMap.Walking,AMap.Riding"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
 	<script>
 		$(function(){
 			var i=0;
	 			$(window).scroll(function(){
	 				var m=$(this).scrollTop();
	 				var t=$(".worktitle").offset().top;
	
	 				if(m>t){
	 					$(".worktitle").addClass("move");
	 					
	 				}
	   				if(m<110){
	   					$(".worktitle").removeClass("move");
	   					
	   				}
	 				
	 			})
	 		$("#ppp").click(function(){
 				$(".tipbgcolor").css("display","block");
 				$("#tip2").css("display","block");
 				$("#tip2").css("left","29%");
 				
 			})
 			$("#close").click(function(){
 				$(".tipbgcolor").css("display","none");
 				$("#tip2").css("display","none");
 				
 			})
 			var state=$("#state").val();
				if(state==0){
					$(".stop").css("display","block");
					$(".sq").css("display","none");	
				}
				if($("#username").text().trim()!=""&&$("#companyname").text().trim()==""){
	   				$(".login").css("display","none");
	   				$("#ulxiala").css("display","block");
	   				$("#ulxialacp").css("display","none");
	   				$("#um1").css("display","none");
	   				$("#um2").css("display","block");
	   				$("#um3").css("display","none");
			
	   			}
	   			else if($("#companyname").text().trim()!=""&&$("#username").text().trim()==""){
	   				$(".login").css("display","none");
	   				$("#ulxiala").css("display","none");
	   				$("#ulxialacp").css("display","block");
	   				$("#um1").css("display","none");
	   				$("#um2").css("display","none");
	   				$("#um3").css("display","block");
	   				
			
	   			}else{
	   				$(".login").css("display","block");
	   				$("#ulxiala").css("display","none");
	   				$("#ulxialacp").css("display","none");
	   				$("#um1").css("display","block");
	   				$("#um2").css("display","none");
	   				$("#um3").css("display","none");
	   			}
				$("#submitform1").click(function(){
	 				var params = {  
	     		           resumeid : $("#resumeid").val(),   
	     		           jobid:$("#jobid").val()
	     		           
	     		        };
	 				
	 				if($("#resumeid").val()==""){
	 					alert("请选择简历")
	 				}else{
	 					$.ajax({  
		 	     		    type: "POST",  
		 	     		    url: "Sendrecruit", 
		 	     		    data: params,  
		 	     		    dataType:"text", 
		 	     		    success: function(json){    
		 	     		     
		 	     		    	alert("已申请,7天之内无法再次申请");
		 	     		    	location.href=window.location.href;
		 	     		    	
		 	     		    },  
		 	     		    error: function(json){  
		 	     		  	alert("已申请过,7天之内无法再次申请");
		 	     		     return false;  
		 	     		    }  
		 	     		 });  
	 				}
	 				
	 				
	 				
	 				
	 			})

 			$("#sq").click(function(){
 				if($("#username").text().trim()==""){	
 					alert("请先登录，若没有账号，请先注册！")
 					location.href="login.jsp";
 				}
 				else{
 					$(".tipbgcolor").css("display","block");
 	     			$("#tip1").css("display","block");	
 	     			if(i==0){
 	     			$.ajax({  
 	 	     		    type: "POST",  
 	 	     		    url: "Getresumeindex", 
 	 	     		    data: {},  
 	 	     		    dataType:"text", 
 	 	     		    success: function(json){         		  
 	 	     		     var obj = $.parseJSON(json); 
 	 	     			  $.each(obj,function(key,val){
 	 	     				  var li = document.createElement("li"); 
 	 	     				  var input=document.createElement("input");
 	 	     				  input.setAttribute("type", "hidden");
 	 	     				  input.setAttribute("value", key);
 	 	     				  li.innerHTML = obj[key]; 
 	 	     				  document.getElementById("resumeul").appendChild(li).appendChild(input);
 	 	     				  $("#resumeul").find("li").addClass("moo"); 				  
 	 	     			});
 	 	     				i++;
 	 	     			
 	 	     		    },  
 	 	     		    error: function(json){  
 	 	     		     alert("您还没有创建简历 请先创建简历");
 	 	     		     location.href="Recruitpage";
 	 	     		     i++;
 	 	     		     return false;  
 	 	     		    }  
 	 	     		 });  	
 	     			}
 				}
 			$('#resumeul').on('click', '.moo' ,function(){
 	     			 $("#resumetext").val($(this).text())
 	     			 $("#resumeid").val($(this).find("input").val())
 	     			
 	     	});
 	     	$('#resumeul').on("mouseover mouseout", '.moo' ,function(event	){
 	     				if(event.type == "mouseover"){
 	     				 $(this).css("color","#ff6000");
 	     				 }else if(event.type == "mouseout"){
 	     					 $(this).css("color","black");
 	     				 }	
 	 	    });
 			$(".canceltip").click(function(){
					changecsstip();
			})
			function changecsstip(){
				$(".tipbgcolor").css("display","none");
     			$("#tip1").css("display","none");		
			}
 					
		
 			})
 		})
 	</script>
 	<script>
 window.onload = function () {		
 		
 		
 		var map = new AMap.Map('container', {
	        resizeEnable: true,
	        zoom: 12,
	        center: [118.756376, 32.052573]
   		});
//地图内容
    map.setFeatures(['bg', 'building', 'road', 'point'])
    
//地图空间
    AMap.plugin(['AMap.ToolBar', 'AMap.Scale', 'AMap.MapType','AMap.Geocoder'],
        function () {
            map.addControl(new AMap.ToolBar());

            map.addControl(new AMap.Scale());
            var geocoder = new AMap.Geocoder({
	            city: ""//城市，默认：“全国”
	        });
	       
	        var marker = new AMap.Marker({
	            map:map,
	            bubble:true
	        })
       		var input = $("#adress").text();
            var address = input;
          	geocoder.getLocation(address,function(status,result){
              if(status=='complete'&&result.geocodes.length){
                marker.setPosition(result.geocodes[0].location);
             	result.geocodes[0].location;
             	$("#x").text(result.geocodes[0].location.getLng());
             	$("#y").text(result.geocodes[0].location.getLat());
                map.setCenter(marker.getPosition())
               
               
              }else{
//             	
              }
              
            
            })
     
        });
        	
//覆盖物
	$("#ppp").click(function(){
	var map = new AMap.Map('container', {
	        resizeEnable: true,
	        zoom: 12,
	        center: [$("#x").text(), $("#y").text()]
   		});
    var marker = new AMap.Marker({
        position: [$("#x").text(), $("#y").text()]
        
    });

    marker.setMap(map);
    var circle = new AMap.Circle({
        center: [$("#x").text(), $("#y").text()],
        radius: 100,
        fillOpacity: 0.2,
        strokeWeight: 1
    })
    circle.setMap(map);
//自定义窗体
    var infowindow;
    var infoWindowContent = '<div class="infowindow-content"></div>';
    map.plugin('AMap.AdvancedInfoWindow', function () {
        infowindow = new AMap.AdvancedInfoWindow({
            panel: 'panel',
            placeSearch: true,
            asOrigin: true,
            asDestination: true,
            content: infoWindowContent
        });
        infowindow.open(map, [$("#x").text(), $("#y").text()]);
       
    });

//汽车路线规划
    $('#car').on('click', function () {
        $('.pageShow').slideToggle();
        clearMarker()
        AMap.plugin('AMap.Driving', function () {
            var drving = new AMap.Driving({
                map: map,
                panel: "panel"
            })
            drving.search([
                {keyword: $('#star').val()},
                {keyword: $('#end').val()}
            ]);
        })
    })
//步行路线规划
    $("#riding").on('click', function () {
        $('.pageShow').slideToggle();
        clearMarker()
        var walking = new AMap.Walking({
            map: map,
            panel: "panel"
        });
        walking.search([
            {keyword: $('#cStar').val()},
            {keyword: $('#cEnd').val()}
        ]);
    })
//骑行路线规划
    $('#walk').on('click', function () {
    
        $('.pageShow').slideToggle();
        clearMarker()
        var riding = new AMap.Riding({
            map: map,
            panel: "panel"
        });
        riding.search([
            {keyword: $('#wStar').val()},
            {keyword: $('#wEnd').val()}
        ]);
    })

    function clearMarker() {
        if (marker) {
            marker.setMap(null);
            marker = null;
        }
        if (infowindow) {
            infowindow.close()
        }
    }

//输入提示
    var autoOptions = new AMap.Autocomplete({
        input: "tipinput"
    });
//城市搜索
    var auto = new AMap.Autocomplete(autoOptions);
    var placeSearch = new AMap.PlaceSearch({
        map: map
    });  //构造地点查询类
    AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
    function select(e) {
        placeSearch.setCity(e.poi.adcode);
        placeSearch.search(e.poi.name);  //关键字查询查询
    }

    $('#show').on('click', function () {
        clearMarker()
        $('.pageShow').slideToggle();
    })

    $('#box').on('click', function () {
        clearMarker()
        $('.pageShow').slideToggle();
        var rectOptions = {
            strokeStyle: "dashed",
            strokeColor: "#333",
            fillColor: "#333",
            fillOpacity: 0.3,
            strokeOpacity: 1,
            strokeWeight: 1
        };
        map.plugin(["AMap.MouseTool"], function () {
            var mouseTool = new AMap.MouseTool(map);
            //通过rectOptions更改拉框放大时鼠标绘制的矩形框样式
            mouseTool.rectZoomIn(rectOptions);
        });
    })
    $('#meter').on('click', function () {
        $('.pageShow').slideToggle();
        map.plugin(["AMap.RangingTool"], function () {
            ruler1 = new AMap.RangingTool(map);
            AMap.event.addListener(ruler1, "end", function (e) {
                ruler1.turnOff();
            });
            var sMarker = {
                icon: new AMap.Icon({
                    size: new AMap.Size(19, 31),//图标大小
                    image: "http://webapi.amap.com/theme/v1.3/markers/n/mark_b1.png"
                })
            };
            var eMarker = {
                icon: new AMap.Icon({
                    size: new AMap.Size(19, 31),//图标大小
                    image: "http://webapi.amap.com/theme/v1.3/markers/n/mark_b2.png"
                }),
                offset: new AMap.Pixel(-9, -31)
            };
            var lOptions = {
                strokeStyle: "solid",
                strokeColor: "#FF33FF",
                strokeOpacity: 1,
                strokeWeight: 2
            };
            var rulerOptions = {startMarkerOptions: sMarker, endMarkerOptions: eMarker, lineOptions: lOptions};
            ruler2 = new AMap.RangingTool(map, rulerOptions);
        });
        //启用自定义样式测距

       ruler1.turnOff();
       ruler2.turnOn();
    })
 	})	
}		
 		
 	</script>
</html>