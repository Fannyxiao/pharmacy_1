<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Admin-addadmin.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/style.css" type="text/css">
<style>
.addadmin{
	width:327px;
	margin:auto;
	height:300px;
	font-size:24px;
	
}
.addadmin h2{
	margin:40px;
}
.addadmin input{
	height:28px;
	border-radius:5px;
}
.submit{
	border:0px;
	font-size:14px;
	float:right;
}
</style>
</head>

<body>

<div id="container">
	<div class="addadmin">
		<h2>增加管理员</h2>
	<form action="Admin/Admin-addadminInput" method="post">
		
			管理员名称：<input type="text" name="admin.adminname"><br>
			请输入密码：<input type="text" name="admin.password"><br>
			<br>
			<input class="submit" type="submit" value="点击增加"
				onclick="return check(this.form)">
		
	</form>
	</div>
</div>
<div style="display:none;">
	<form action="Admin/Admin-addadminInput" method="post">
		<ul>
			<li>请输入名称:<input type="text" name="admin.adminname"></li>
			<li>请输入密码:<input type="text" name="admin.password"></li>
			<li><input type="submit" value="增加"
				onclick="return check(this.form)">
		</ul>
	</form>
</div>
</body>
</html>
