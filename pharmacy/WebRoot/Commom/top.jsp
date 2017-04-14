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

<title>My JSP 'top.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/css_whir.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="top">
		<dl>
			<div class="fl">
				<span class="f_blue"> <%
 	try {
 		if (session.getAttribute("id") == null)
 			out.write("<a href='User/User-loginInput' class='f_blue'>您好！请登录</a></span>");
 		else
 			out.write("<a href='User/User-destroy'>注销</a>");
 	} catch (NullPointerException e) {
 		;
 	}
 %> <a href="User/User-registerInput">免费注册</a>
			</div>
			<div class="fr">
				<a href="http://localhost:8080/pharmacy/Drug/Drug-indexshou"
					class="f_blue">信药首页</a> | <a
					href="
    <%try {
				if (session.getAttribute("id") == null)
					out.write("User/User-loginInput");
				else
					out.write("User/User-index");
			} catch (NullPointerException e) {
				;
			}%>
			?user.id=<%=session.getAttribute("id")%>
    ">我的信药</a>
				| <a href="">帮助中心</a> | <a href="">联系客服</a>
			</div>
		</dl>
	</div>
	<div class="head">
		<div class="fl logo">
			<img src="images/logo.jpg" />
		</div>
		<div class="search fl">
			<form action="" name="sform" method="post">
				<input type="text" name="key" value=" " class="input1" /><input
					type="submit" name="submit" value=" " class="btn1" />
			</form>
			<div class="tags">
				热门搜索：医疗器械&nbsp;&nbsp;&nbsp;滋补保健&nbsp;&nbsp;&nbsp;母婴用品</div>
		</div>
		<div class="tel "></div>
		<div class="clear"></div>
		<div class="tal">
			<div id="menu">
				<ul>
					<li class="current_page_item"><a href="http://localhost:8080/pharmacy/Drug/Drug-indexshou">首页</a></li>
					<li><a href="Drug/Drug-jtyy">家庭用药</a></li>
			<li><a href="Drug/Drug-zkyy">专科用药</a></li>
			<li><a href="Drug/Drug-ylqx">医疗器械</a></li>
			<li><a href="Drug/Drug-zbbj">滋补保健</a></li>
			<li><a href="Drug/Drug-wssg">维生素钙</a></li>
			<li><a href="Drug/Drug-myyp">母婴用品</a></li>
					<li><a href="/pharmacy/Other/guwm.jsp">关于我们</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div></div>
		<!-- end #menu -->
</body>
</html>
