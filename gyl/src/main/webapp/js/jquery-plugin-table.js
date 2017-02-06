(function(jQuery){
	$.fn.GridPanel={
		defaultConfig:{
			url:"",
			fields:""
		},
		showTable:function(config){
			$.extend($.fn.GridPanel.defaultConfig,config);
			$.post($.fn.GridPanel.defaultConfig.url,null,function(data){
				$.fn.GridPanel.createTR(data);
			})
		},
		createTR:function(data){
			$.each(data,function(){
				var row = this;
				var $tr = $("<tr/>");
				var fields = $.fn.GridPanel.defaultConfig.fields;
				$.each(fields,function(){
					var $td = $.fn.GridPanel.createTD(this,row);
					$tr.append($td);
				})
				$("#seek table").append($tr);
			})
		},
		createTD:function(field,data){
			var $td = $("<td/>");
			$td.attr("item",$(field).attr("item"));
			if($(field).attr("item")=="radio"){
				var $radio = $("<input/>").prop("type","radio");
				$td.append("<input type='radio'/>");
			}else{
				$td.text(data[$(field).attr("item")])
			}
			return $td;
		}
		
	}
})(jQuery)