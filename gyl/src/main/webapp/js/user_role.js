var userRole = {
	data:{
		user : {
			name : "",
			uid : ""
		},
		zTreePlugin : ""
	},
	opt:{
		divOpt:{
			showDiv:function(){
				$("div:hidden").show();
			}
		},
		userOpt:{
			showUserName:function(){
				$("#userImage").text("用户："+userRole.data.user.name);
			}
		},
		roleOpt:{
			setting : {
				check: {
					enable: true
				},
				data: {
					simpleData: {
						enable:true,
						idKey: "rid",
						pIdKey: "pid",
						rootPId: ""
					}
				},
				callback:{
					onCheck: function(){
						userRole.opt.roleOpt.allCheckedStatus();
                    }
				}
				
			},
			loadRoleTree:function(){
				$.post('userRoleAction_showRoleTree.action',{uid:userRole.data.user.uid},function(data){
					userRole.data.zTreePlugin = $.fn.zTree.init($("#roleTree"),userRole.opt.roleOpt.setting, data);
					$("#loading").hide();
					$("#roleTree").show();
					userRole.opt.roleOpt.allCheckedStatus();
					$("#allchecked").prop("disabled","");
				});
			},
			saveRole:function(){
				var checkedNodes = userRole.data.zTreePlugin.getCheckedNodes(true);
				var checkedString = "";
				for(var i=0; i<checkedNodes.length; i++){
					if(i == checkedNodes.length-1){
						checkedString = checkedString + checkedNodes[i].rid;
					}else{
						checkedString = checkedString + checkedNodes[i].rid+",";
					}
				}
				var parameter = {
						uid:userRole.data.user.uid,
						checkedStr:checkedString
				};
				$.post("userRoleAction_saveRole.action",parameter,function(data){
					if("success"==data){
						alert("保存成功。");
					}else{
						alert("保存失败，请稍后再试。");
					}
				});
			},
			isAllCheckedRole:function(){
				var array =  userRole.data.zTreePlugin.getCheckedNodes(false)
				if(array.length==0){
					return true;
				}else{
					return false;
				}
			},
			allCheckedStatus:function(){
				var falg = false;
                if (userRole.opt.roleOpt.isAllCheckedRole()) {
                	falg = true;
                }
                $("#allchecked").prop("checked", falg);
			}
		}
	},
	init:{
		initData:function(){
			var name = $(this).parent().siblings("td:first").text();
			var uid = $(this).parent().siblings("input[type='hidden']").attr("value");
			userRole.data.user.name = name;
			userRole.data.user.uid = uid;
		},
		initEven:function(){
			$("a").each(function(){
				if("设置角色"==$(this).text()){
					$(this).css("cursor","pointer");
					$(this).unbind("click");
					$(this).bind("click",function(){
						userRole.opt.divOpt.showDiv();
						userRole.init.initData.call(this);
						userRole.opt.userOpt.showUserName();
						$("#allchecked").prop("disabled", "disabled");
						$("#loading").show();
						$("#roleTree").hide();
						userRole.opt.roleOpt.loadRoleTree();
					});
				}
			});
			
			$("#allchecked").unbind("change");
			$("#allchecked").bind("change",function(){
				var flag = false;
				if($(this).prop("checked")){
					 flag = true;
				}
				userRole.data.zTreePlugin.checkAllNodes(flag);
			});
			
			$("#saveRole").unbind("click");
			$("#saveRole").bind("click",function(){
				userRole.opt.roleOpt.saveRole();
			});
			
		}
	}
}

$().ready(function(){
	userRole.init.initEven();
});