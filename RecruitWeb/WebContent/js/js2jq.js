
 	$(function(){
 		 	var i=1;
 			$("input[name='gander']").click(function(){
 				i=$(this).val();	
 				if(i!=0){
 				$(".wydiv").slideUp();
 			}else{
 				$(".wydiv").slideDown();
 			}
	
 		});
 	
	})
 