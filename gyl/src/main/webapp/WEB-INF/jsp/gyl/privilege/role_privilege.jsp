<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/gyl/common/common.jspf"%>
<html>
<head>
    <title>用户列表</title>
	<link rel="stylesheet" href="${proPath}/style/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="${proPath }/js/jquery.ztree.core.js"></script>
		<script type="text/javascript" src="${proPath }/js/jquery.ztree.excheck.js"></script>
	<script language="javascript" src="${proPath}/js/role_privilege.js"></script>
    <link type="text/css" rel="stylesheet" href="${proPath}/style/blue/pageCommon.css" />
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 角色管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
                <td width="100">角色名</td>
                <td>相关操作</td>
            </tr>
        </thead>
        
        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="userList">
        	<s:iterator value="#roles">
	            <tr class="TableDetail1 template">
	                <td><s:property value="name"/></td>
	                <s:hidden name="rid"></s:hidden>
	                <td align=center>
						<a>设置权限</a>
	                </td>
	            </tr>
            </s:iterator>
        </tbody>
    </table>
    
    <div class="ItemBlock_Title1" id="userTitle" style="display: none;">
    	<!-- 信息说明 -->
    	<div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="style/blue/images/item_point.gif"/>
        	<label id="roleImage"></label>
    	</div>
    	<div class="ItemBlock_Title1" id="privilegeTitle" style="display: none;">
       		<img border="0" width="4" height="7" src="style/blue/images/item_point.gif"/>
       		<label>选择权限</label>
    	</div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder" style="display: none;" id="privilegeContent">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
			   		<!--显示数据列表-->
					<tbody id="TableData">
						<tr class="TableDetail1">
							<!-- 显示权限树 -->
							<td>
								<img id="loading" alt="" src="images/loading.gif">
								<ul id='privilegeTree' class="ztree">
							</td>
						</tr>
					</tbody>
                </table>
            </div>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <image id="savePrivilege" src="style/images/save.png"/>
        </div>
</div>

</body>
</html>
