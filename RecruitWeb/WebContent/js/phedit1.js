	$(function(){
 			var n=1;
 			var i=$("#username").val();
 			var sex=$("#sex").val();
 			var date=$("#birthday").val();
 			var home=$("#hometowntext").val();

 			$(".left_dh>a").not(":eq(0)").hover(function(){
 				$(this).stop().addClass("bgco");
 				
 				
 			},function(){
 				$(this).stop().removeClass("bgco");
 				
 				
 			})
 			$(".mfbody").hover(function(){
 				$(".mfbody").removeClass("color");
				$(".mfbody").addClass("oncolor");;
				if(n==1){
					
					$(".edit").css("display","block");
				}
 			},function(){
 				$(".mfbody").addClass("color");
				$(".mfbody").removeClass("oncolor");
 				$(".edit").css("display","none");
 				if(n==2){
 				$(".mfbody").removeClass("color");
				$(".mfbody").addClass("oncolor");;
 				}
 			})
 			$(".edit").click(function(){
 				n=2;
 				$("#usernametext").css("display","none");
				$("#sex").css("display","none");
				$("#birthday").css("display","none");
				$("#by2").attr("style","display: block;");
				$(".radio_gander").css("display","block");
				$(".mfbody input").removeClass("inoputon");
				$(".mfbody input").addClass("frominput");
				$(".radio_gander input").removeClass("frominput");
				$(".mfbody input").removeAttr("disabled");	
				$("#hometowntext").attr("style","display: none;");
				$("#hometown").attr("style","display: block;");
				$("#username1").attr("style","display: block;");
				$("#hometown").val(home);
				$("#form").find(".info").css("display","block");
				$(".btn").css("display","block");
				$(this).css("display","none");	
				if(sex=="女"){
					$("#famale").attr("checked","true");	
				}else{
					
					$("#male").attr("checked","true");		
				}				
 			})
// 			$(".save").click(function(){
// 				$(".tipbgcolor").css("display","block");
//     			$(".tip").css("display","block");	
// 				
// 				
// 			})
			$(".cancel").click(function(){	
				$("#username").val(i);
				$("#sex").val(sex);
				$("#birthday").css("display","block");
				$("#hometowntext").attr("style","display: block;");
				$("#usernametext").css("display","block");
				$("#username1").attr("style","display: none;");
				n=1;
				changecss();
				$("#form").find(".info").css("display","none");
				$("#form").find(".info1").css("display","none");
			})
			
			$(".canceltip").click(function(){
					changecsstip();
			})
			function changecss(){
				$("#sex").css("display","block");
				$("#by2").attr("style","display: none;");
				$(".radio_gander").css("display","none");
				$(".mfbody input").addClass("inoputon");
				$(".mfbody input").removeClass("frominput");
				$(".radio_gander input").addClass("frominput");
				$(".mfbody input").attr("disabled","disabled");	
				$("#hometown").attr("style","display: none;");
				$(".edit").css("display","block");	
				$(".btn").css("display","none");
				
			}
			function changecsstip(){
				$(".tipbgcolor").css("display","none");
     			$(".tip").css("display","none");		
			}
				
   		})
 		