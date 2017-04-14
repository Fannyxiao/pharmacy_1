<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Drug-druglist.jsp' starting page</title>

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
				<th style="width:80px;padding-left:5px;padding-right:5px;">药品编号</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品类型</th>
			    <th style="width:100px;padding-left:5px;padding-right:5px;">发布者姓名</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品名称</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品描述</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品价格</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">剩余量</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">发布时间</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">商品图片</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">删除</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">进货</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">修改</th>
            </tr>
		</thead>
        <tbody>
	        <s:iterator value="drugs" var="s">
			  	<tr>
				    <td><s:property value="#s.drugid" /></td>
				    <td><s:if test="#s.drugtype == 1">
							家庭用药
						</s:if> <s:if test="#s.drugtype == 2">
							专科用药
						</s:if> <s:if test="#s.drugtype == 3">
							医疗器械
						</s:if> <s:if test="#s.drugtype == 4">
							滋补保健
						</s:if> <s:if test="#s.drugtype == 5">
							维生素钙
						</s:if> <s:if test="#s.drugtype == 6">
							母婴用品
						</s:if>
						<s:property value="#s.drugtype" />
					</td>
				    <td><s:property value="#s.admin.adminname" /></td>
				    <td><s:property value="#s.drugtitle" /></td>
				    <td style="width:280px;padding-left:5px;padding-right:5px;"><s:property value="#s.drugtext" /></td>
				    <td><s:property value="#s.price" /></td>
				    <td><s:property value="#s.drugnumber" /></td>
				    <td><s:property value="#s.time" /></td>
				    <td>
				    	<s:if test="#s.image != null">
							<img src="upload/<s:property value="#s.image" />" width="100" height="100" />
						</s:if>
					</td>
					<td><a href="Drug/Drug-drugdelete?drug.drugid=<s:property value="#s.drugid" />">删除</a></td>
					<td>
						<form action="Drug/Drug-drugnumber" method="post">
							<input type="text" style="display:none;" name="drug.drugid" value="<s:property value="#s.drugid" />">
							<input type="number" name="number">
							<input type="submit" value="进货">
						</form>
					</td>
					<td><a href="Drug/Drug-drugrevise?drug.drugid=<s:property value="#s.drugid" />">修改信息</a></td>
				</tr>
				</s:iterator>
        </tbody>
	</table>
</div>
	




	<table style="display:none;">
		<tbody>
			<s:iterator value="drugs" var="s">

				<tr>
					<td>药品编号： <s:property value="#s.drugid" />
					</td>
				</tr>
				<tr>
					<td>药品类型: <s:if test="#s.drugtype == 1">
							家庭用药
						</s:if> <s:if test="#s.drugtype == 2">
							专科用药
						</s:if> <s:property value="#s.drugtype" /></td>
				</tr>
				<tr>
					<td>发布者姓名： <s:property value="#s.admin.adminname" />
					</td>
				</tr>
				<tr>
					<td>药品名称：
						
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
							href="Drug/Drug-drugdelete?drug.drugid=<s:property value="#s.drugid" />">删除</a></td>
						<td>
					
				</tr>
				<tr><td>
				<form action="Drug/Drug-drugnumber" method="post">
					<input type="text" style="display:none;" name="drug.drugid" value="<s:property value="#s.drugid" />">
					<input type="number" name="number">
					<input type="submit" value="进货">
				</form>
				
				<a href="Drug/Drug-drugrevise?drug.drugid=<s:property value="#s.drugid" />">修改信息</a></td></tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>
	