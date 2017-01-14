<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/gyl/common/common.jspf"%>
<link rel="stylesheet" href="${proPath}/style/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="${proPath }/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${proPath }/js/role.js"></script>


<html>
  <head>
    <title>My JSP 'role.jsp' starting page</title>
  </head>
  
  <body>
	 <TABLE border=0 height=600px align=left>
		<TR>
			<TD width=260px align=left valign=top >
				<ul id="roleTree" class="ztree" style="width:260px; overflow:auto;"></ul>
			</TD>
		</TR>
	</TABLE>
	<div class="addnodes" id="rMenu" style="position:absolute;display:none;overflow:hidden">
       <ul>
         <li id="addRole" style="background: url(${pageContext.request.contextPath}/style/images/jia.jpg) 10px 5px no-repeat;border-bottom:1px solid #8ab2e6;cursor:pointer;">增加角色</li>
         <li id="deleteRole" style="background: url(${pageContext.request.contextPath}/style/images/jian.jpg) 10px 9px no-repeat;border-bottom:1px solid #8ab2e6;cursor:pointer;">删除角色</li>
         <li id="updateRole" style="background: url(${pageContext.request.contextPath}/style/images/icq.gif) 8px 4px no-repeat;border-bottom:1px solid #8ab2e6;cursor:pointer;">修改角色</li>
       </ul>
</div>
  </body>
</html>
