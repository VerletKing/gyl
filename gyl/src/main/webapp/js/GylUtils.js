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
	},
	
	//业务模块
	 business:{
		 data:{
			 //当前主表id
			 xsyddzhubid:'',
			 hidden:''
		 },
		 add:{
			rMenuClick:function(){
				$("#addRow").unbind("click");
				$("#addRow").bind("click",function(){
					GylUtils.business.add.divOpt.addTR();
					$("#menu").hide();
				})
			},
			hideRMenu:function(){
				$("#menu").hover(function(){},function(){
					$("#menu").hide();
				});
			},
			showRMenu:function(event){
				$("#menu").css("left", event.clientX - 50);
        		$("#menu").css("top", event.clientY - 50);
       			$("#menu").show();
			},
			addHhContextMenu:function(){
				$("#right_center").delegate("td[item='hh']","contextmenu",function(event){
					GylUtils.business.add.showRMenu(event);
					return false;
				})
			},
			divOpt:{
				tr:"",
				trClone:null,
				trCloneMark:false,
				showDiv:function(){
					//移除全部旧数据
					$("#seek tr:gt(0)").remove();
					$("#seek").show();
					$.fn.GridPanel.showTable({
						url:"productJsonAction_showDivProduct.action",
						fields:$("#seek tr:eq(0) td[item]")
					});
				},
				fillValueToField:function(){
					var $tds = $(":radio:checked").parent().siblings();
					$.each($tds,function(){
						var key = $(this).attr("item");
						var value = $(this).text();
						if(key=="spmc"){
							GylUtils.business.add.divOpt.tr.children("td[item='"+key+"']").children("div").children("input").attr("value",value);
						}else{
							GylUtils.business.add.divOpt.tr.children("td[item='"+key+"']").children("input").attr("value",value);
						}
					})
				},
				wsdjBlurEvent:function(){
					$("td[item='wsdj']").delegate("input","blur",function(){
						GylUtils.business.add.divOpt.accountMoney.call(this);
					})
				},
				/**
				 * 计算含税单价、含税金额等
				 */
				accountMoney:function(){
					//数量
					var sl = $(this).parent().siblings("td[item='sl']").children("input").val();
					//税率
					var shulv = $(this).parent().siblings("td[item='shulv']").children("input").val();
					//单品扣率
					var dpkl = $(this).parent().siblings("td[item='dpkl']").children("input").val();
					//无税单价
					var wsdj = $(this).val();
					//含税单价
					var hsdj = Math.floor(parseFloat(wsdj)*(1+parseFloat(shulv))*100)/100;
					$(this).parent().siblings("td[item='hsdj']").children("input").attr("value",hsdj);
					//无税金额
					var wsje = parseInt(sl)*parseFloat(wsdj);
					$(this).parent().siblings("td[item='wsje']").children("input").attr("value",wsje);
					//含税金额
					var hsje = parseFloat(hsdj)*parseInt(sl);
					$(this).parent().siblings("td[item='hsje']").children("input").attr("value",hsje);
					//税额
					var se = hsje-wsje;
					$(this).parent().siblings("td[item='se']").children("input").attr("value",se);
					//折扣额
					var zke = parseFloat(dpkl)*hsje;
					$(this).parent().siblings("td[item='zke']").children("input").attr("value",zke);
				},
				addTR:function(){
					//str = str.replace(/[0-9]+/, parseInt(str.match (/[0-9]+/))+1);
					var $tr = GylUtils.business.add.divOpt.trClone;
					
					$tr.children("td").each(function(){
						if($(this).attr("item")=="hh"){
							var $hh = $(this).children("input");
							$hh.val(parseInt($hh.val())+1);
							$hh.attr("name",$hh.attr("name").replace(/[0-9]+/, parseInt($hh.attr("name").match (/[0-9]+/))+1));
						}else if($(this).attr("item")=="spmc"){
							var $spmc = $(this).children("div").first().children("input");
							$spmc.attr('name',$spmc.attr("name").replace(/[0-9]+/, parseInt($spmc.attr("name").match (/[0-9]+/))+1));
						}else{
							var $input = $(this).children("input");
							$input.attr("name",$input.attr("name").replace(/[0-9]+/, parseInt($input.attr("name").match (/[0-9]+/))+1));
						}
					});
					$("#right_center table").append($tr);
					GylUtils.business.add.divOpt.trCloneMark=false;
				}
			},
			divProductFrame:{
				divProdctFrameEvent:function(){
					$(".searRR").unbind("click");
					$(".searRR").bind("click",function(){
						if(GylUtils.business.add.divOpt.trCloneMark==false){
							GylUtils.business.add.divOpt.trClone = $(this).parent().parent().parent().clone(true);
							GylUtils.business.add.divOpt.trCloneMark=true;
						}
						GylUtils.business.add.divOpt.tr = $(this).parent().parent().parent();
						GylUtils.business.add.divOpt.showDiv();
					});
				},
				divProductFrameSureEvent:function(){
					$(".btn").unbind("click");
					$(".btn").bind("click",function(){
						GylUtils.business.add.divOpt.fillValueToField();
						$("#seek").remove();
						return false;
					});
				}
			}
		 },
		 formSubmit:function(){
			 var id = $(this).prop("id");
			 $("input[name='"+GylUtils.business.data.hidden+"']").val(id);
			 document.forms[0].submit();
		 },
		 zhubTRClick:function(){
			 if(GylUtils.business.data.xsyddzhubid){
				 $("#"+GylUtils.business.data.xsyddzhubid).css("background-color", "#c0c0c0");
			 }
			 $("tr[field='item_zhub']").unbind("click");
			 $("tr[field='item_zhub']").bind("click",function(){
				 GylUtils.business.formSubmit.call(this);
			 });
		 },
		 disPage:{
			 //主表跳转页
			 zhubLinkPage:function(){
				 var page = $(this).attr("param");
				 $("#pageNo").val(page);
				 document.forms[0].submit();
			 },
			 //子表跳转页
			 zhibLinkPage:function(){
				 var page = $(this).attr("param");
				 $("#pageNo_zhib").val(page);
				 document.forms[0].submit();
			 },
			 //主表分页事件
			 zhubDisPageEvent:function(){
				 //首页,上一页,下一页,尾页
				 $("input[page='zhub']").unbind("click");
				 $("input[page='zhub']").bind("click",function(){
					 GylUtils.business.disPage.zhubLinkPage.call(this);
				 });
			 },
			 //子表分页事件
			 zhibDisPageEvent:function(){
				//首页,上一页,下一页,尾页
				 $("input[page='zhib']").unbind("click");
				 $("input[page='zhib']").bind("click",function(){
					 GylUtils.business.disPage.zhibLinkPage.call(this);
				 }); 
			 },
			 zhubDisabled:function(){
				 //主表当前页是第一页，屏蔽首页，上一页
				 var zhubCurrenPage = $("#pageNo").val();
				 if(zhubCurrenPage<=1){
					 $("input[flag='zhub_firstPage']").prop("disabled",true);
					 $("input[ flag='zhub_prePage']").prop("disabled",true);
				 }
				 //主表当前页是最后一页，屏蔽下一页，尾页
				 var zhubTotalPage = $("input[flag='zhub_lastPage']").attr("param");
				 if(zhubCurrenPage>=zhubTotalPage){
					 $("input[flag='zhub_nextPage']").prop("disabled",true);
					 $("input[flag='zhub_lastPage']").prop("disabled",true);
				 }
			 },
			 zhibDisabled:function(){
				 //主表当前页是第一页，屏蔽首页，上一页
				 var zhibCurrenPage = $("#pageNo_zhib").val();
				 if(zhibCurrenPage<=1){
					 $("input[flag='zhib_firstPage']").prop("disabled",true);
					 $("input[ flag='zhib_prePage']").prop("disabled",true);
				 }
				 //主表当前页是最后一页，屏蔽下一页，尾页
				 var zhibTotalPage = $("input[flag='zhib_lastPage']").attr("param");
				 if(zhibCurrenPage>=zhibTotalPage){
					 $("input[flag='zhib_nextPage']").prop("disabled",true);
					 $("input[flag='zhib_lastPage']").prop("disabled",true);
				 }
			 },
			 initEvent:function(){
				 //给跳转设置事件
				 $("input[value='转']").unbind("click");
				 $("input[value='转']").bind("click",function(){
					 document.forms[0].submit();
				 });
				 GylUtils.business.disPage.zhubDisabled();
				 GylUtils.business.disPage.zhibDisabled();
				 
				 GylUtils.business.disPage.zhubDisPageEvent();
				 GylUtils.business.disPage.zhibDisPageEvent();
 
			 }
		 },
		 init:{
			 init:function(){
				 GylUtils.business.init.initData();
				 GylUtils.business.init.initEvent();
				 GylUtils.business.disPage.initEvent();
				 //阻止input回车会触发表单提交
				 $(":text").unbind("keydown");
				 $(":text").bind("keydown",function(event){
					 if(event.keyCode==13){
						 return false;
					}
				 });
				 //点击查询时清除主表id值
				 $("input[value='查询']").unbind("click");
				 $("input[value='查询']").bind("click",function(){
					 $("input[name='"+GylUtils.business.data.hidden+"']").val("");
				 });
			 },
			 initData:function(){
				 var hidden = $("body").data("hidden");
				 GylUtils.business.data.hidden = hidden;
				 var id = $("input[name='"+hidden+"']").val();
				 GylUtils.business.data.xsyddzhubid = id;
			 },
			 initEvent:function(){
				 GylUtils.business.zhubTRClick();
			 }
		 }
	 }
};