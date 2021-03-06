<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Admin-index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   

</head>

<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />药店后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="Admin/Admin-loginInput"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>管理列表</strong></div>
  <h2><span class="icon-user"></span>人物管理</h2>
  <ul style="display:block">
    <li><a href="Admin/Admin-user" target="right"><span class="icon-caret-right"></span>用户列表</a></li>
    <li><a href="Admin/Admin-adminlist" target="right"><span class="icon-caret-right"></span>管理员列表</a></li>
    <%
		try {
			if (session.getAttribute("adminname").equals("admin"))
				out.write(" <li><a href='Admin/Admin-addadmin' target='right'><span class='icon-caret-right'></span>增加管理员</a></li>");
			else
				out.write("<li><a><span class='icon-caret-right'></span>增加管理员</a></li>");
		} catch (NullPointerException e) {
			;
		}
	%>
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>药品管理</h2>
  <ul>
    <li><a href="Drug/Drug-adddrug" target="right"><span class="icon-caret-right"></span>发布药品</a></li>
    <li><a href="Drug/Drug-druglist" target="right"><span class="icon-caret-right"></span>药品列表</a></li>
    <li><a href="Car/Car-list" target="right"><span class="icon-caret-right"></span>购物车列表</a></li> 
    <li><a href="Order/Order-adminorderlist" target="right"><span class="icon-caret-right"></span>订单列表</a></li>     
    <li><a href="Admin/Admin-adminreply" target="right"><span class="icon-caret-right"></span>评论列表</a></li>       
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a target="right" class="icon-home"> 首页</a></li>
  <li><a id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="Admin/info.jsp" name="right" width="100%" height="100%"></iframe>
</div>


<div style="display:none;">
	名称：<%=session.getAttribute("adminname")%>
	<a href="Admin/Admin-user">用户列表</a>
	<a href="Admin/Admin-adminlist">用户列表</a>
	<a href="Drug/Drug-adddrug">发布药品</a>
	<a href="Drug/Drug-druglist">药品列表</a>
	<a href="Car/Car-list">购物车列表</a>
	<%
		try {
			if (session.getAttribute("adminname").equals("admin"))
				out.write("<a href='Admin/Admin-addadmin'>增加管理员</a>");
			else
				out.write("对不起，您没有权限增加管理员！");
		} catch (NullPointerException e) {
			;
		}
	%>
	<a href="Order/Order-adminorderlist">订单列表</a>
	<a href="Admin/Admin-adminreply">评论列表</a>
</div>
</body>
</html>
