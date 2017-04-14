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

<title>My JSP 'Car-list.jsp' starting page</title>

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
    <caption>购物车列表</caption>
		<thead>
        	<tr>
				<th>购物车编号</th>
				<th>用户名</th>
				<th>药品名</th>
				<th>数量</th>
				<th>时间</th>
            </tr>
		</thead>
        <tbody>
<s:iterator value="cars" var="c">
	        	<tr>
	            	<td><s:property value="#c.carid" /></td>
	                <td><s:property value="#c.user.username" /></td>
	                <td><s:property value="#c.drug.drugtitle" /></td>
	                <td><s:property value="#c.number" /></td>
	                <td><s:property value="#c.time" /></td>
	            </tr>
            </s:iterator>
        </tbody>
	</table>
</div>
<div style="display:none;">
	<s:iterator value="cars" var="c">
   编号：<s:property value="#c.carid" />
		<br>
   用户名：<s:property value="#c.user.username" />
		<br>   药品名：<s:property value="#c.drug.drugtitle" />
		<br>   加入购物车数量：<s:property value="#c.number" />
		<br>   加入购物车时间：<s:property value="#c.time" />
	</s:iterator></div>
</body>
</html>
