var GylUtils = {
	 // 基础数据模块
	baseData:{
		//删除插件
		deleteObj:{
			deleteFunction:function(config){
				$.deleteObj(config);
			}
		},
		//修改插件
		updateObj:{
			updateFunction:function(config){
				$.updateObj(config);
			}
		},
		// 分页处理
		dispage:{
			// 跳转页
			linkeNextPage:function(currentPage){
				var url = $('body').data("url");
				window.location.href=url+"?baseQuery.currenPage="+currentPage;
			}
		},
		initEvent:function(){
			var currentPage = $('body').data("currentPage");
			var totalPage = $('body').data("totalPage");
			$("span[class='page'] input").unbind('click');
			$("span[class='page'] input").bind('click',function(){
				if('firstPage'==$(this).attr('flag')){
					if(1==currentPage){
						alert('已经是首页')
					}else{
						GylUtils.baseData.dispage.linkeNextPage(1);
					}
				}else if('prePage'==$(this).attr('flag')){
					if(1==currentPage){
						alert('已经是第一页')
					}else{
						GylUtils.baseData.dispage.linkeNextPage(currentPage-1);
					}
				}else if('nextPage'==$(this).attr('flag')){
					if(totalPage==currentPage){
						alert('已经是最后一页')
					}else{
						GylUtils.baseData.dispage.linkeNextPage(currentPage+1);
					}
				}else if('lastPage'==$(this).attr('flag')){
					if(totalPage==currentPage){
						alert('已经是尾页')
					}else{
						GylUtils.baseData.dispage.linkeNextPage(totalPage);
					}
				}else if('skip'==$(this).attr('flag')){
					var numPage = $("#pageNo").val();
					if(numPage>totalPage){
						GylUtils.baseData.dispage.linkeNextPage(totalPage);
					}else if(numPage<1){
						GylUtils.baseData.dispage.linkeNextPage(1);
					}
					GylUtils.baseData.dispage.linkeNextPage(numPage);
				}
			})
		}
	}


	
};