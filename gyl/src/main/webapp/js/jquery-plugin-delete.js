(function(jQuery){
	
	//删除插件
	$.deleteObj = function(config){
		//复选框全选或全不选
		$("#"+config.ctrlCheckBoxID).unbind("click");
		$("#"+config.ctrlCheckBoxID).bind("click",function(){
			if($(this).prop("checked")){
				$("input[name='"+config.checkBoxName+"']").prop("checked",true);
			}else{
				$("input[name='"+config.checkBoxName+"']").prop("checked",false);
			}
		});
		//复选框全选状态或全不选状态
		$("input[name='"+config.checkBoxName+"']").unbind("click");
		$("input[name='"+config.checkBoxName+"']").bind("click",function(){
			if($("input[name='"+config.checkBoxName+"']:not(:checked)").length==0){
				$("#"+config.ctrlCheckBoxID).prop("checked",true);
			}else{
				$("#"+config.ctrlCheckBoxID).prop("checked",false);
			}
		});
		
		
		$("#"+config.deleteID).unbind("click");
		$("#"+config.deleteID).bind("click",function(){
			var checkedNodes = $("input[name='"+config.checkBoxName+"']:checked")
			if(checkedNodes.length==0){
				alert("请中一个以上在删除。")
				return false;
			}else{
				if(window.confirm("您确定要删除吗？")){
					
					//判断删除按钮type是button
					if($("#"+config.deleteID).prop("type")=="button"){
						var strIds = new String();
						for(var i=0;i<checkedNodes.length;i++){
							if(i==checkedNodes.length-1){
								strIds += $(checkedNodes[i]).val();
							}else{
								strIds += $(checkedNodes[i]).val()+",";
							}
						}
						var currentPage = $('body').data("currentPage");
						window.location.href=config.url+"?strIds="+strIds+"&baseQuery.currenPage="+currentPage;
					}
					
					//判断删除按钮type是submit
					else if($("#"+config.deleteID).prop("type")=="submit"){
						return true;
					}
				}else{
					return false;
				}
			}
		})
		
		
	};
})(jQuery)