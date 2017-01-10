var roleTree = {
	data:{
		treeNode:'',
		zTreePlugin:''
	},
	setting : {
		data: {
			simpleData: {
				enable:true,
				idKey: "rid",
				pIdKey: "pid",
				rootPId: ""
			}
		},
		callback:{
			onRightClick:function(event, treeId, treeNode){
				roleTree.data.treeNode = treeNode;
				roleTree.showRMenu(event.clientX, event.clientY);
			}
		}
		
	},
	showRMenu:function(x, y){
		$("#rMenu ul").show();
		$("#rMenu").css({"top":y+"px", "left":x+"px", "display":"block"});
		
	},
	loadRoleTree:function(){
		$.post('roleAction_showRoleTree.action',null,function(data){
			roleTree.data.zTreePlugin = $.fn.zTree.init($("#roleTree"),roleTree.setting,data);
		});
	},
	/**
	 * 初始化
	 */
	init:{
		/**
		 * 初始化事件
		 */
		initEven:function(){
			/**
			 * 增加角色
			 */
			$("#addRole").unbind("click");
			$("#addRole").bind("click",function(){
				roleTree.addRole();
			});
			
			/**
			 * 删除角色
			 */
			$("#deleteRole").unbind("click");
			$("#deleteRole").bind("click",function(){
				roleTree.deleteRole();
			});
			
			/**
			 * 修改角色
			 */
			$("#updateRole").unbind("click");
			$("#updateRole").bind("click",function(){
				roleTree.updateRole();
			});
		}
	},
	addRole:function(){
		var roleName = window.prompt("请输入角色的名称");
		if(roleName){
			$.post("roleAction_isRole.action",{
				name:roleName
			},function(flag){
				if('1'==flag){
					var parameter = {
							name:roleName,
							pid:roleTree.data.treeNode.rid,
							isParent:false
					};
					$.post("roleAction_addRole.action",parameter,function(data){
						var newNode = {
								rid: data.rid,
								name: roleName,
								pid: roleTree.data.treeNode.rid,
								isParent: false
						};
						roleTree.data.zTreePlugin.addNodes(roleTree.data.treeNode,newNode,true);
					});
				}else if('2'==flag){
					alert("该角色已经存在");
				}
			})
		}
	},
	deleteRole:function(){
		if(window.confirm("您确定要删除？")){
			$.post("roleAction_deleteRole.action",{
				rid:roleTree.data.treeNode.rid
			},function(){
				roleTree.data.zTreePlugin.removeNode(roleTree.data.treeNode,false);
			})
		}
	},
	updateRole:function(){
		var newName = window.prompt("请输入新名称",roleTree.data.treeNode.name);
		if(roleTree.data.zTreePlugin.getNodeByParam("name",newName)){
			alert("该名称已经存在")
		}else{
			$.post("roleAction_updateRole.action",{
				rid:roleTree.data.treeNode.rid,
				name:newName
			},function(data){
				var treeNode = roleTree.data.zTreePlugin.getNodeByParam("rid",roleTree.data.treeNode.rid);
				treeNode.name = newName;
				roleTree.data.zTreePlugin.refresh();
			})
		}
	}
};

$().ready(function(){
	roleTree.loadRoleTree();
	$("#rMenu").hover(function(){
		
	},function(){
		$(this).hide();
	}),
	roleTree.init.initEven();
})