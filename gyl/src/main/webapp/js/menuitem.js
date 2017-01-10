var menuitem = {
		setting : {
			data: {
				simpleData: {
					enable:true,
					idKey: "mid",
					pIdKey: "pid",
					rootPId: ""
				}
			}
			
		},
		loadMenuitemTree:function(){
			$.post('menuitemAction_showMenuitemTree.action',null,function(data){
				$.fn.zTree.init($("#tree"),menuitem.setting,data);
			});
		}
};

$().ready(function(){
	menuitem.loadMenuitemTree();
})