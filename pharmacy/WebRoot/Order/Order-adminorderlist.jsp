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
    
    <title>My JSP 'Order-adminorderlist.jsp' starting page</title>
    
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
 
 <div id="container"  style="margin-left:5px;">   

	<table class="zebra" style="width:1600px;" >
    <caption>药品列表</caption>
		<thead>
        	<tr>
				<th style="width:80px;padding-left:5px;padding-right:5px;">订单编号</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">用户昵称</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">用户id</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">备注</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">地址</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">下订单日期</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">发货日期</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">状态</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">数量</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品编号</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品名称</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">总额</th>
            </tr>
		</thead>
        <tbody>
	        <s:iterator value="orders" var="o">
			  	<tr>
				    <td><s:property value="#o.orderid" /></td>
				    <td><s:property value="#o.user.username" /></td>
				    <td><s:property value="#o._user_id" /></td>
				    <td><s:property value="#o.memo" /></td>
				    <td><s:property value="#o.receive"/></td>
				    <td><s:property value="#o.orderdate" /></td>
				    <td>
				    	<s:if test="#o.hassend == 0">未发货&nbsp;&nbsp;<a href="Order/Order-send?order.orderid=<s:property value="#o.orderid" />">发货</a></s:if>
				    	<s:if test="#o.hassend == 1"><s:property value="#o.shipdate" /></s:if>
				    </td>
				    <td>
				    	<s:if test="#o.hasreceive == 1">
				  			已收货
				  		</s:if>
				  		<s:if test="#o.hasreceive == 0">
				  			未收货	
				  		</s:if>
				    </td>
				    <td><s:property value="#o.number" /></td>
				    <td><s:property value="#o._drug_id" /></td>
				    <td><s:property value="#o.drug.drugtitle" /></td>
				    <td><s:property value="#o.number * #o.drug.price" /></td>
				</tr>
				</s:iterator>
        </tbody>
	</table>
</div> 
  <div style="display:none;">
    <s:iterator value="orders" var="o">
  	编号： <s:property value="#o.orderid" /><br>
  	用户名：<s:property value="#o.user.id" /><br>
  	用户id：<s:property value="#o._user_id" /><br>
  	备注：<s:property value="#o.memo" /><br>
  	地址：<s:property value="#o.receive"/><br>
  	下订单日期：<s:property value="#o.orderdate" /><br>
  	<s:if test="#o.hassend == 1">
  		发货日期：<s:property value="#o.shipdate" /><br>
  		已发货<br>
  		<s:if test="#o.hasreceive == 1">
  			已收货<br>
  		</s:if>
  		<s:if test="#o.hasreceive == 0">
  			未收货 <br>
  		</s:if>
  	</s:if>
  	<s:if test="#o.hassend == 0">
  	未发货<br>
  	<a href="Order/Order-send?order.orderid=<s:property value="#o.orderid" />">发货</a>
  	</s:if><br>
  	数量：<s:property value="#o.number" /><br>
  	药品编号：<s:property value="#o._drug_id" /><br>
  	药品名称：<s:property value="#o.drug.drugtitle" /><br>
  	总额：<s:property value="#o.number * #o.drug.price" /><br><br><br>
  	</s:iterator></div>
  </body>
</html>
				    