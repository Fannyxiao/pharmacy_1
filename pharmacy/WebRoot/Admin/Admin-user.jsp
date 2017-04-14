<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Admin-user.jsp' starting page</title>

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
<div id="container" style="width:1200px;padding-left:5px;padding-right:5px;">   

	<table class="zebra">
    <caption>用户列表</caption>
		<thead>
        	<tr>
				<th style="padding-left:5px;padding-right:5px;">用户编号</th>
				<th style="padding-left:5px;padding-right:5px;">用户昵称</th>
				<th style="padding-left:5px;padding-right:5px;">用户密码</th>
				<th style="padding-left:5px;padding-right:5px;">用户手机</th>
				<th style="padding-left:5px;padding-right:5px;">用户邮箱</th>
				<th style="padding-left:5px;padding-right:5px;">用户年龄</th>
				<th style="padding-left:5px;padding-right:5px;">用户性别</th>
				<th style="padding-left:5px;padding-right:5px;">创建日期</th>
				<th style="padding-left:5px;padding-right:5px;">总积分</th>
				<th style="padding-left:5px;padding-right:5px;">剩余积分</th>
            </tr>
		</thead>
        <tbody>
	        <s:iterator value="users" var="c">
				<tr>
					<td><s:property value="#c.id" /></td>
					<td><s:property value="#c.username" /></td>
					<td><s:property value="#c.password" /></td>
					<td><s:property value="#c.phone" /></td>
					<td><s:property value="#c.email" /></td>
					<td><s:property value="#c.age" /></td>
					<td><s:property value="#c.sex" /></td>
					<td><s:property value="#c.createdate" /></td>
					<td><s:property value="#c.allintegral" /></td>
					<td><s:property value="#c.overintegral" /></td>
				</tr>
			</s:iterator>
        </tbody>
	</table>
</div>
	<table style="display:none;">
		<tbody>
			<s:iterator value="users" var="c">
				<tr>
					<td><s:property value="#c.id" /></td>
					<td><s:property value="#c.username" /></td>
					<td><s:property value="#c.password" /></td>
					<td><s:property value="#c.phone" /></td>
					<td><s:property value="#c.email" /></td>
					<td><s:property value="#c.age" /></td>
					<td><s:property value="#c.sex" /></td>
					<td><s:property value="#c.createdata" /></td>
					<td><s:property value="#c.allintegral" /></td>
					<td><s:property value="#c.overintegral" /></td>
					
				</tr>
			</s:iterator>

		</tbody>
	</table>


</body>
</html>
