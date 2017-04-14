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

<title>My JSP 'Index-druglist.jsp' starting page</title>

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
	<table>
		<tbody>
			<s:iterator value="drugs" var="s">

				<tr>
					<td>药品编号： <s:property value="#s.drugid" />
					</td>
				</tr>
				<tr>
					<td>药品类型: <s:if test="#s.drugtype == 1">
							家庭常备
						</s:if> <s:if test="#s.drugtype == 2">
							专科用药
						</s:if> <s:if test="#s.drugtype == 3">
							医疗器械
						</s:if> <s:if test="#s.drugtype == 4">
							滋补保健
						</s:if> <s:if test="#s.drugtype == 5">
							维生素该
						</s:if> <s:if test="#s.drugtype == 6">
							母婴用品
						</s:if> <s:property value="#s.drugtype" /></td>
				</tr>

				<tr>
					<td>药品名称：<a
						href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
							<s:property value="#s.drugtitle" />
					</a>
					</td>
				</tr>
				<tr>
					<td>药品描述： <s:property value="#s.drugtext" />
					</td>
				</tr>
				<tr>
					<td>药品价格： <s:property value="#s.price" />
					</td>
				</tr>
				<tr>
					<td>剩余量： <s:property value="#s.drugnumber" />
				</tr>
				<tr>
					<td>发布时间： <s:property value="#s.time" />
					</td>
				</tr>
				<tr>
					<td>商品图片：<s:if test="#s.image != null">
							<img src="upload/<s:property value="#s.image" />" width="100"
								height="100" />
						</s:if></td>
				</tr>

				<tr>
					<td><a
						href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
							查看详情</a></td>
				</tr>

			</s:iterator>
		</tbody>
	</table>
</body>
</html>
