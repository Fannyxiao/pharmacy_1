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

<title>My JSP 'User-index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/alert.css" />
<style>
a:link {
	color: #686868;
	text-decoration: none;
}

a:visited {
	color: #686868;
	text-decoration: none;
}

a:hover {
	color: #6495ed;
	text-decoration: none;
}

a:active {
	color: #686868;
	text-decoration: none;
}

.big {
	width: 75%;
	height: 600px;
	border: 1px solid #ccc;
	margin: 20px auto;
	padding: 0px;
	background:url(images/12.png);
	background-size:100%;
}
.big tr{
	height:40px;
	
}
.big td{font-size:24px;}
.big input{font-size:20px;}
</style>

</head>
<body>
<jsp:include page="../Commom/top.jsp"></jsp:include>
	<div class="big">
	<table style="width:80%;margin:30px auto;">
		<tr>
			<td>编号：</td><td>	<s:property value="car.carid" /></td>
		</tr>
		<tr>
			<td>购物人：</td><td><s:property value="car.user.username" /></td>
		</tr>
		<tr>
			<td>药品名称:</td><td><s:property value="car.drug.drugtitle" /></td>
		</tr>
		<tr>
			<td>数量：</td><td><s:property value="car.number" /></td>
		</tr>
		<tr>
			<td>药品单价：</td><td><s:property value="car.drug.price" /></td>
		</tr>
		<tr>
			<td>合计：</td><td><s:property value="car.drug.price * car.number" /></td>
		</tr>
		<form action="Order/Order-addorder" method="post">
		<input type="text" style="display:none;" name="car.carid"
				value="<s:property value="car.carid" />">
			<tr>
				<td>备注：</td><td><input type="text" name="order.memo"></td>
			</tr>
			<tr>
				<td>收货地址：</td><td><input type="text" name="order.receive"></td>
			</tr>
			<tr>
				<td></td><td><input type="submit" value="购买"></td>
			</tr>
			
		</form>
	</table>



	</div>

 <div style="width:100%;height:300px;background:#f0f0f0;padding:30px;">
 	<table style="width:78%;line-height:30px;font-size:14px;margin:30px auto;">
 		<tr>
          <td>购物指南</td>
          <td><a href="#">购物流程</a></td>
          <td><a href="#">会员须知</a></td>
          <td><a href="#">发票制度</a></td>
          <td><a href="#">服务承诺</a></td>
          <td><a href="#">服务协议</a></td>
        </tr>
      
      
        <tr>
          <td>配送方式</td>
          <td><a href="#">上门自提</a></td>
          <td><a href="#">配送范围</a></td>
          <td><a href="#">商品验货</a></td>
          <td><a href="#">签收快递运输</a></td>
        </tr>
      
      
        <tr>
          <td>支付方式</td>
          <td><a href="#">货到付款</a></td>
          <td><a href="#">在线支付</a></td>
          <td><a href="#">异地支付</a></td>
          <td><a href="#">公司转账</a></td>
        </tr>
      
      
        <tr>
          <td>售后服务</td>
          <td><a href="#">退换货原则</a></td>
          <td><a href="#">退换货地址</a></td>
          <td><a href="#">退款说明</a></td>
        </tr>
      
      
        <tr>
          <td>自助服务</td>
          <td><a href="#">退换货原则</a></td>
          <td><a href="#">退换货地址</a></td>
          <td><a href="#">退款说明</a></td>
        </tr>
      
      
        <tr>
          <td>帮助信息</td>
          <td><a href="#">价格保护</a></td>
          <td><a href="#">常见问题</a></td>
          <td><a href="#">找回密码</a></td>
          <td><a href="#">联系我们</a></td>
        </tr>
      
      
        <tr>
          <td>关于信药</td>
          <td><a href="#">我们的团队</a></td>
          <td><a href="#">帮助中心</a></td>
          <td><a href="#">网站地图</a></td>
          <td><a href="#">版权说明</a></td>
        </tr>
 	</table>
 </div>
<div class="copy">    山财信药药业有限公司  备05022371  </div>
</body>
</html>
<div style="display:none;">
	购物车编号：
	<s:property value="car.carid" />
	购物人：
	<s:property value="car.user.username" />
	药品名称:
	<s:property value="car.drug.drugtitle" />
	数量：
	<s:property value="car.number" />
	药品单价：
	<s:property value="car.drug.price" />
	<form action="Order/Order-addorder" method="post">
		<ul>
			<input type="text" style="display:none;" name="car.carid"
				value="<s:property value="car.carid" />">
			<li>备注：<input type="text" name="order.memo"></li>
			<li>收货地址：<input type="text" name="order.receive"></li>
			<li><input type="submit" value="购买"></li>
		</ul>
	</form></div>
</body>
</html>
