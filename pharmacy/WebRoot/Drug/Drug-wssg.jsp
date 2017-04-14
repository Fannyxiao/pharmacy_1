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

<title>My JSP 'jtyy.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.geti {
	font-size: 16px;
	font-family: 幼圆;
	line-height: 25px;
	padding-left: 10px;
}

.getii {
	
}

.geti_1 {
	width: 243px;
	height: 220px;
}

.geti_1:hover {
	height: 220px;
}
</style>
</head>

<body>
<jsp:include page="../Commom/top.jsp"></jsp:include>
	<div style="width:1102px;margin:10px auto;">
		<s:iterator value="drugs" var="s">
			<s:if test="#s.drugtype == 5">
				<div
					style="float:left;width:253px;height:380px;margin:5px;padding:5px;border:0.5px #000 dashed">
					<div class="getii"
						style="width:243px;margin:auto;height:300px;background: url(upload/<s:property value='#s.image' />);">
						<a
								href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><div class="geti_1"></div></a>
						<div class="geti"
							style="background:rgba(255,255,255,0.8);filter:'progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')';-moz-background-size: 100% 100%;background-size: 100% 100%;overflow:hidden;">
							<p>
								<a
								href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:property value="#s.drugtitle" /></a>
							</p>
							<p>原价：58</p>
						</div>
					</div>
					<div style="font-size:30px;float:left;color:#ff3a27">
						￥
						<s:property value="#s.price" />
					</div>
					<div style="height:100px;">
						<div style="font-size:12px;float:right;padding-top:10px;">6折|分享|想买</div>
						<div style="clear:both;"></div>
						<div
							style="border-top:#000 0.5px dashed;width:243px;padding:5px 10px;">
							<div
								style="font-size:12px;float:left;color:#ff3a27,1px;padding-top:10px;">信药网</div>
							<div style="font-size:12px;float:right;padding-top:10px;">
								还有
								<s:property value="#s.drugnumber" />
							</div>
						</div>
					</div>
				</div>
			</s:if>
		</s:iterator>

	</div>

<jsp:include page="../Commom/buttom.jsp"></jsp:include>


</body>
</html>
