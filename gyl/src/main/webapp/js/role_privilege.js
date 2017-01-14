var rolePrivilege = {
	data:{
		role : {
			name : "",
			rid : ""
		},
		checkedStr : "",
		zTreePlugin : ""
	},
	opt:{
		divOpt:{
			showDiv:function(){
				$("div:hidden").show();
			}
		},
		roleOpt:{
			showRoleName:function(){
				$("#roleImage").text("角色："+rolePrivilege.data.role.name);
			}
		},
		privilegeOpt:{
			setting : {
				check: {
					enable: true
				},
				data: {
					simpleData: {
						enable:true,
						idKey: "id",
						pIdKey: "pid",
						rootPId: ""
					}
				}
				
			},
			loadPrivilegeTree:function(){
				$.post('privilegeAction_showPrivilegeTree.action',{rid:rolePrivilege.data.role.rid},function(data){
					rolePrivilege.data.zTreePlugin = $.fn.zTree.init($("#privilegeTree"),rolePrivilege.opt.privilegeOpt.setting,data);
					$("#loading").hide();
					$("#privilegeTree").show();
				});
			},
			savePrivilege:function(){
				var checkedNodes = rolePrivilege.data.zTreePlugin.getCheckedNodes(true);
				var checkedString = "";
				for(var i=0; i<checkedNodes.length; i++){
					if(i == checkedNodes.length-1){
						checkedString = checkedString + checkedNodes[i].id;
					}else{
						checkedString = checkedString + checkedNodes[i].id+",";
					}
				}
				var parameter = {
						rid:rolePrivilege.data.role.rid,
						checkedStr:checkedString
				}
				$.post("privilegeAction_savePrivilege.action",parameter,function(){
					if("success"==data){
						alert("保存成功。");
					}else{
						alert("保存失败，请稍后再试。");
					}
				})
			}
		}
	},
	init:{
		initData:function(){
			var name = $(this).parent().siblings("td:first").text();
			var rid = $(this).parent().siblings("input[type='hidden']").attr("value");
			rolePrivilege.data.role.name = name;
			rolePrivilege.data.role.rid = rid;
		},
		initEven:function(){
			$("a").each(function(){
				if("设置权限"==$(this).text()){
					$(this).css("cursor","pointer");
					$(this).unbind("click");
					$(this).bind("click",function(){
						rolePrivilege.opt.divOpt.showDiv();
						rolePrivilege.init.initData.call(this);
						rolePrivilege.opt.roleOpt.showRoleName();
						$("#loading").show();
						$("#privilegeTree").hide();
						rolePrivilege.opt.privilegeOpt.loadPrivilegeTree();
					});
				}
			});
			
			$("#savePrivilege").unbind("click");
			$("#savePrivilege").bind("click",function(){
				rolePrivilege.opt.privilegeOpt.savePrivilege();
			})
			
		}
	}
}

$().ready(function(){
	rolePrivilege.init.initEven();
});