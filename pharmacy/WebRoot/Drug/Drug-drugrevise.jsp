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
    
    <title>My JSP 'Drug-drugrevise.jsp' starting page</title>
    
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
 <div id="container">   
 <form action="Drug/Drug-drugreviseinput" enctype="multipart/form-data" method="post">
	<table class="zebra">
		<caption>修改药品详细信息</caption>
		<tr>
			<td style="width:300px;">商品编号：</td><td> <s:property value="drug.drugid" /></td><td>
			<input type="text" name="drug.drugid" value="<s:property value="drug.drugid" />" style="display:none;">
			</td>
		</tr>
		<tr>
			<td>商品名称：</td><td><s:property value="drug.drugtitle" /></td><td>
				<input type="text" name="drug.drugtitle" value="<s:property value="drug.drugtitle" />">
			</td>
		</tr>
		<tr>
			<td>商品描述：</td><td> <s:property value="drug.drugtext" /></td><td>
			<textarea type="text" name="drug.drugtext"><s:property value="drug.drugtext" /></textarea>
			</td>
		</tr>
		<tr>
			<td>商品价格： </td><td><s:property value="drug.price" /></td><td>
			<input type="text" name="drug.price" value="<s:property value="drug.price" />">
			</td>
		</tr>
		<tr>
			<td>剩余量： </td><td><s:property value="drug.drugnumber" /></td><td>
		</tr>
		<tr>
			<td>发布时间： </td><td><s:property value="drug.time" /></td><td>
			</td>
		</tr>
		<tr>
			<td>商品图片：</td><td><s:if test="drug.image != null">
					<img src="upload/<s:property value="drug.image" />" width="120"
						height="100" />
				</s:if>
				</td><td><input type="file" name="headImg">
				</td>
		</tr>
		
		<tr><td></td><td></td><td>
		<input  type="submit" value="更新"></td></tr>
	</table>
	</form>
  </div>
   
  <div style="display:none;">
  <form action="Drug/Drug-drugreviseinput" enctype="multipart/form-data" method="post">
    <table>
		<tr>
			<td>商品编号： <s:property value="drug.drugid" />
			<input type="text" name="drug.drugid" value="<s:property value="drug.drugid" />" style="display:none;">
			</td>
		</tr>
		<tr>
			<td>商品名称：<s:property value="drug.drugtitle" />
				<input type="text" name="drug.drugtitle" value="<s:property value="drug.drugtitle" />">
			</td>
		</tr>
		<tr>
			<td>商品描述： <s:property value="drug.drugtext" />
			<input type="text" name="drug.drugtext" value="<s:property value="drug.drugtext" />">
			</td>
		</tr>
		<tr>
			<td>商品价格： <s:property value="drug.price" />
			<input type="text" name="drug.price" value="<s:property value="drug.price" />">
			</td>
		</tr>
		<tr>
			<td>剩余量： <s:property value="drug.drugnumber" />
		</tr>
		<tr>
			<td>发布时间： <s:property value="drug.time" />
			</td>
		</tr>
		<tr>
			<td>商品图片：<s:if test="drug.image != null">
					<img src="upload/<s:property value="drug.image" />" width="100"
						height="100" />
				</s:if></td>
		</tr>
		<tr>
			<td>更改图片:
					<input type="file" name="headImg">
			</td>
		</tr>
		<tr><td>
		<input type="submit" value="更新"></td></tr>
	</table>
	</form>
	</div>
  </body>
</html>
