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

<title>My JSP 'Order-myorderlist.jsp' starting page</title>

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
style="display:none;"
<div>
	<s:iterator value="orders" var="o"><br>
  	编号： <s:property value="#o.orderid" /><br>
  	用户名：<s:property value="#o.user.username" /><br>
  	用户id：<s:property value="#o._user_id" /><br>
  	备注：<s:property value="#o.memo" /><br>
  	地址：<s:property value="#o.receive"/><br>
  	下订单日期：<s:property value="#o.orderdate" /><br>
  	<s:if test="#o.hassend == 1">
  	发货日期：<s:property value="#o.shipdate" /><br>
  	已发货<br>
  	<s:if test="#o.hasreceive == 1">
  		已收货
  	</s:if><br>
  	<s:if test="#o.hasreceive == 0">
  		未收货 <br>
  		<a href="Order/Order-receive?order.orderid=<s:property value="#o.orderid" />&&user.id=<%=session.getAttribute("id")%>">确认收货</a>
  	</s:if>
  	</s:if>
  	<s:if test="#o.hassend == 0">未发货</s:if><br>
  	数量：<s:property value="#o.number" /><br>
  	药品编号：<s:property value="#o._drug_id" /><br>
  	药品名称：<s:property value="#o.drug.drugtitle" /><br>
  	总额：<s:property value="#o.number * #o.drug.price" />
  	<br><br><br><br><br><br><br><br><br><br><br><br>
  	</s:iterator>
  	</div>
</body>
</html>
