<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Admin-adminlist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/style.css" type="text/css">

  </head>
  
  <body>
  <div id="container">   

	<table class="zebra">
    <caption>管理员列表</caption>
		<thead>
        	<tr>
				<th>管理员编号</th>
				<th>管理员称号</th>
				<th>管理员密码</th>
            </tr>
		</thead>
        <tbody>
	        <s:iterator value="admins" var="c">
	        	<tr>
	            	<td><s:property value="#c.id" /></td>
	                <td><s:property value="#c.adminname" /></td>
	                <td><s:property value="#c.password" /></td>
	            </tr>
            </s:iterator>
        </tbody>
	</table>
</div>
  
    <table style="display:none;">
		<tbody>
			<s:iterator value="admins" var="c">
				<tr>
					<td><s:property value="#c.id" /></td>
					<td><s:property value="#c.adminname" /></td>
					<td><s:property value="#c.password" /></td>
					
				</tr>
			</s:iterator>

		</tbody>
	</table>
  </body>
</html>
