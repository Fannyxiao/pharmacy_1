<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'guwm.jsp' starting page</title>
    
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
   <jsp:include page="../Commom/top.jsp"></jsp:include>
   <div	style="width:1250px;margin:10px auto;background:url(images/22222.jpg);background-size:100%;">
   	<img src="images/logo.jpg" style="margin:100px 0 0 200px ;">
   	<div style="margin:100px 0 100px 500px;color:#fff;font-size:50px;font-family:微软雅黑;">山财最大的医药网站</div>
   &nbsp;
   </div>
   <jsp:include page="../Commom/buttom.jsp"></jsp:include>
  </body>
</html>
