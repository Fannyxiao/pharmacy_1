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

<title>My JSP 'Car-mycarlist.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<s:iterator value="cars" var="c">
   编号：<s:property value="#c.carid" />
		<br>
   用户名：<s:property value="#c.user.username" />
		<br>   药品名：<s:property value="#c.drug.drugtitle" />
		<br>   加入购物车数量：<s:property value="#c.number" />
		<br>   加入购物车时间：<s:property value="#c.time" />
		<br>
		<a
			href="Car/Car-deletecar?car.carid=<s:property value="#c.carid" />&&user.id=<%=session.getAttribute("id")%>">删除商品</a>
		<br>
		<form
			action="Car/Car-addcarnumber?user.id=<%=session.getAttribute("id")%>"
			method="post">
			<ul>
				<input type="text" style="display:none;" name="car.carid"
					value="<s:property value="#c.carid" />">
				<li>要增加的数量：<input type="number" name="num"></li>
				<li><input type="submit" value="增加"></li>
			</ul>
		</form>
		<br><a href="Order/Order-addorderinput?car.carid=<s:property value="#c.carid" />">购买</a>
	</s:iterator>
</body>
</html>
