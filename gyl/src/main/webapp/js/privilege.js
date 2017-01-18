var privilege = {
		setting : {
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
			$.post('privilegeAction_showMenuitemTree.action',null,function(data){
				$.fn.zTree.init($("#tree"),privilege.setting,data);
			});
		}
};

$().ready(function(){
	privilege.loadPrivilegeTree();
})