<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/gyl/common/common.jspf"%>
<link rel="stylesheet" href="${proPath }/style/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="${proPath }/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${proPath }/js/menuitem.js"></script>


<html>
  <head>
  </head>
  
  <body>
	<TABLE border=0 height=600px align=left>
		<TR>
			<TD width=260px align=left valign=top style="BORDER-RIGHT: #999999 1px dashed">
				<ul id="tree" class="ztree" style="width:260px; overflow:auto;"></ul>
			</TD>
		</TR>
	</TABLE>
  
  </body>
</html>
