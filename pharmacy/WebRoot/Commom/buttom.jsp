<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buttom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/css_whir.css" rel="stylesheet" type="text/css" />
<style>
.footer1{
height:117px;width:240px;margin:40px;
}
.footer1:hover{
	margin-top:20px;
}
.item{
height:200px;
}
.inner .item{
	width:156px;
}
</style>
  </head>
  
  <body>
    <div id="footer">
  <dl>
    <div class="inner" style="height:300px;">
      <div class="item" style="height:200px;">
        <dl>
          <dt>购物指南</dt>
          <dd><a href="#">购物流程</a></dd>
          <dd><a href="#">会员须知</a></dd>
          <dd><a href="#">发票制度</a></dd>
          <dd><a href="#">服务承诺</a></dd>
          <dd><a href="#">服务协议</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>配送方式</dt>
          <dd><a href="#">上门自提</a></dd>
          <dd><a href="#">配送范围</a></dd>
          <dd><a href="#">商品验货</a></dd>
          <dd><a href="#">签收快递运输</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>支付方式</dt>
          <dd><a href="#">货到付款</a></dd>
          <dd><a href="#">在线支付</a></dd>
          <dd><a href="#">异地支付</a></dd>
          <dd><a href="#">公司转账</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>售后服务</dt>
          <dd><a href="#">退换货原则</a></dd>
          <dd><a href="#">退换货地址</a></dd>
          <dd><a href="#">退款说明</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>自助服务</dt>
          <dd><a href="#">退换货原则</a></dd>
          <dd><a href="#">退换货地址</a></dd>
          <dd><a href="#">退款说明</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>帮助信息</dt>
          <dd><a href="#">价格保护</a></dd>
          <dd><a href="#">常见问题</a></dd>
          <dd><a href="#">找回密码</a></dd>
          <dd><a href="#">联系我们</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>关于信药</dt>
          <dd><a href="#">我们的团队</a></dd>
          <dd><a href="#">帮助中心</a></dd>
          <dd><a href="#">网站地图</a></dd>
          <dd><a href="#">版权说明</a></dd>
        </dl>
      </div>
      </div>
  </dl>
</div>
<div class="copy">    山财信药药业有限公司  备05022371  </div>
<!--底部结束-->
  </body>
</html>
