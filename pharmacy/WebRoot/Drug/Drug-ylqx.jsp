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

<title>My JSP 'Drug-zbbj.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
a:link {
	color: #000;
	text-decoration: none;
}

a:visited {
	color: #000;
	text-decoration: none;
}

a:hover {
	color: #f00;
	text-decoration: none;
}

a:active {
	color: #000;
	text-decoration: none;
}

body {
	background-color: #E6E6FA;
}

.top1 {
	width: 80%;
	height: 400px;
	background: url(images/03.jpg);
	background-size: 100% 100%;
	margin: 0 auto
}

.top2 {
	width: 80%;
	margin: 0 auto;
	height: 20px;
	background-color: #BBD1E6;
}

.box-shadow {
	-webkit-box-shadow: inset 0 0 30px #0CC;
	-moz-box-shadow: inset 0 0 30px #ccc;
	box-shadow: inset 0 0 30px #ccc;
}

.m1 {
	width: 80%;
	background-color: #BBD1E6;
	margin: 50px auto;
	border-radius: 15px;
	font-family: "幼圆";
}

.m1-t {
	width: 100%;
	height: 80px;
	border-radius: 15px;
	margin-top: 10px;
	text-align: center;
	color: #58A0DA;
	font-size: 50px;
	padding-top: 20px;
	background: url(images/01.jpg);
	background-size: 100% 100%;
}

.m1-ml {
	width: 46%;
	height: 400px;
	background-color: #fff;
	border-radius: 15px;
	float: left;
	margin: 20px 5px 0 10px;
	padding: 0 10px;
}

.m1-mr {
	width: 46%;
	height: 400px;
	background-color: #fff;
	border-radius: 15px;
	float: right;
	margin: 20px 10px 0 5px;
	padding: 0 10px;
}

.tu {
	width: 100%;
	height: 200px;
}

.ming {
	font-size: 20px;
	color: #EC3062;
	padding-left: 20px;
}

.tt {
	width: 100%;
	padding: 20px;
	height: 150px;
	color: #3A8ACF;
	font-size: 20px;
	line-height: 30px;
}

.dian {
	width: 120px;
	height: 40px;
	background-color: #EC3062;
	color: #fff;
	border-radius: 10px;
	font-size: 20px;
}

.dian1 {
	width: 100px;
	height: 40px;
	background-color: #f00;
	color: #fff;
	border-radius: 10px;
	font-size: 20px;
}

.bg {
	width: 100%;
	float: left;
	margin: 20px 0;
	text-align: center;
	font-size: 15px;
}

.bg1 {
	width: 17%;
	height: 340px;
	border: 0.5px solid #000;
	float: left;
	background:#fff;
	margin: 10px 10px;
}

.bg1:hover {
	border: 0.5px solid #fff;
}

.clearfloat {
	clear: both
}
</style>

</head>

<body>
	<jsp:include page="../Commom/top.jsp"></jsp:include>
	<div class="top1"></div>
	<div class="top2"></div>
	<div class="m1">
		<div class="m1-t">
			<b>您的贴心管家</b>
		</div>
		<div class="m1-ml">
			<div class="tu">
				<img src="images/06.png" style="width:100%;height:100%;">
			</div>
			<font class="ming">来利 奥利司他片 0.12g*24片</font>
			<hr style="border:1px dashed #ccc; height:1px">
			<table class="tt">
				<tr>
					<td>奥利司他，餐前一粒<br>有效减少脂肪吸收，<br>能明显发现油脂排除
					</td>
					<td style="text-align:right;"><a href=""><input
							type="button" value="点击查看<<" class="dian"></a></td>
				</tr>
			</table>

		</div>
		<div class="m1-mr">
			<div class="tu">
				<img src="images/07.png" style="width:100%;height:100%;">
			</div>
			<font class="ming">同仁堂 轻身消胖丸 240粒*3瓶</font>
			<hr style="border:1px dashed #ccc; height:1px">
			<table class="tt">
				<tr>
					<td>中药成分<br>益气、利湿，降脂、消胖<br>用于单纯性肥胖症
					</td>
					<td style="text-align:right;"><a href=""><input
							type="button" value="点击查看<<" class="dian"></a></td>
				</tr>
			</table>
		</div>



		<div class="bg">
			<s:iterator value="drugs" var="s">
				<s:if test="#s.drugtype == 3">
					<a
						href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><div
							class="bg1">
							<img src="upload/<s:property value='#s.image' />"
								style="width:180px;height:190px;"><br> <a
								href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:property
									value="#s.drugtitle" /></a><br>
							<br>
							<br> <a
								href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"
								style="color:#f00;">药网价：￥<s:property value="#s.price" /></a><br>
							<br> <a
								href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><input
								type="button" value="查看详情" class="dian1"></a>
						</div></a>
				</s:if>
			</s:iterator>
			<div class="clearfloat"></div>
		</div>
		<div class="clearfloat"></div>
	</div>
	<jsp:include page="../Commom/buttom.jsp"></jsp:include>
</body>
</html>
