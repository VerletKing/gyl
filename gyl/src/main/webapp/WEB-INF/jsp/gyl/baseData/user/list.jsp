<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/gyl/common/common.jspf"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<script type="text/javascript">
		$(function(){
			$("body").data("url","userAction_showPageResult.action");
			$("body").data("currentPage",${requestScope.users.currenPage});
			$("body").data("totalPage",${requestScope.users.totalPage});
			GylUtils.baseData.initEvent();
			GylUtils.baseData.deleteObj.deleteFunction({
				deleteID:"deleteSome",
				checkBoxName:"ids",
				ctrlCheckBoxID:"checkBoxID",
				url:"userAction_deleteIds.action"
			});
			GylUtils.baseData.updateObj.updateFunction({
				url:"userAction_updateUI.action",
				id:"uid"
			});
		})
		</script>
	</head>
  
	<body>
		<table id="userwrap">
			<tr class="user">
		        <td class="right">
					<form action="userAction_deleteIds.action" method="get">
						<table cellspacing="0" cellpadding="0" id="maintain-top" align="center"  width="900" style=" overflow:auto; height:40px;">
							<div class="btn" lign="left" height="20">
								<a href="userAction_addUI.action?baseQuery.currenPage=${requestScope.users.currenPage}"><input type="button" value="添加" style="width: 50px"/></a>
							</div>
							<tr class="one" height="20">
								<td class="btn" align="left">
									<!-- <input type="button" value="删除" id="deleteSome"/> -->
							        <input type="submit" value="删除" id="deleteSome"/>
							        <s:hidden name="baseQuery.currenPage"/>
							    </td>
							</tr>
				           <tr class="one" height="20">
				           	   <td><input type="checkbox" id="checkBoxID"/></td>
				               <td width="300">姓名</td>
				               <td width="300">性别</td>
				               <td width="300">邮箱</td>
							   <td width="300">手机号码</td>
							   <td width="300">部门</td>
							   <td width="300">操作</td>
				           </tr>
				           <s:iterator value="#users.item">
								<tr align="center">
								    <td><input type="checkbox" name="ids" value="${requestScope.uid}"/></td>
								    <td><s:property value="userName"/></td>
								    <td><s:property value="sex"/></td>
								    <td><s:property value="email"/></td>
								    <td><s:property value="phone"/></td>
								    <td><s:property value="department.name"/></td>
									<td class="btn" align="center">
										<input type="button" value="修改"/>
									</td>
							    </tr>
						    </s:iterator>
					    </table>
					</form>
			        <p style="width:900px; height:20px;font-size:12px;">
						<span class="page" style="float:right">
							<input type="Button" flag="firstPage" value="首页"/>&nbsp;
							<input type="button" flag="prePage" value="上一页" />&nbsp;
							<input type="button" flag="nextPage" value="下一页"/>&nbsp;
							<input type="button" flag="lastPage" value="尾页"/>&nbsp;
							<span>转到第<input name="userQuery.currenPage" id="pageNo" type="text" value="${requestScope.users.currenPage}" size="4" style="height:16px; width:28px; border:1px solid #999999; background:#FFF; border-radius:0;" />页 </span>&nbsp;&nbsp;
							<input type="button" value="转" flag="skip" style=" padding:0 10px;"/>
						</span>
						&nbsp;&nbsp;
						共有${requestScope.users.totalData}条记录，当前第 ${requestScope.users.currenPage}/${requestScope.users.totalPage}页
					</p>
		        </td>
		    </tr>
		</table>
	</body>
</html>
