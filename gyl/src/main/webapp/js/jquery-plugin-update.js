(function(jQuery){
	$.updateObj = function(config){
		$("input[value='修改']").unbind("click");
		$("input[value='修改']").bind("click",function(){
			var id = $(this).parent().siblings(":first").children().val();
			var currentPage = $('body').data("currentPage");
			window.location.href = config.url+"?"+config.id+"="+id+"&baseQuery.currenPage="+currentPage;
		})
	}
})(jQuery)