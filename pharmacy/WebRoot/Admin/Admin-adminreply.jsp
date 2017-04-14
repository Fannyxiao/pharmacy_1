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
    
    <title>My JSP 'Index-adminreply.jsp' starting page</title>
    
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

	<table class="zebra" style="width:1400px;" >
    <caption>评论列表</caption>
		<thead>
        	<tr>
				<th style="width:80px;padding-left:5px;padding-right:5px;">评论id</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">用户id</th>
			    <th style="width:100px;padding-left:5px;padding-right:5px;">用户名</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品id</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">药品名称</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">根评论</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">叶子评论</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">评论内容</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">评论日期</th>
			    <th style="width:100px;padding-left:5px;padding-right:5px;">管理员回复</th>
			    <th style="width:80px;padding-left:5px;padding-right:5px;">回复评论</th>
            </tr>
		</thead>
        <tbody>
	        <s:iterator value="drugreplies" var="c">
			  	<tr>
			  	<td><s:property value="#c.drugreplyid" /></td>
					<td><s:property value="#c._user_id" /></td>
					<td><s:property value="#c.user.username" /></td>
					<td><s:property value="#c._drug_drugid" /></td>
					<td><s:property value="#c.drug.drugtitle" /></td>
					<td><s:property value="#c.pid" /></td>
					<td><s:property value="#c.rootid" /></td>
					<td><s:property value="#c.replytext" /></td>
					<td><s:property value="#c.replydate" /></td>
					<td><s:property value="#c.adminreply" /></td>
					<td>
						<form action="Admin/Admin-adminreplyinput" method="post"> 
							<input type="text" name="drugreply.drugreplyid" style="display:none;" value="<s:property value="#c.drugreplyid" />">
							<input type="text" name="drugreply._admin_id" style="display:none;" value="<%=session.getAttribute("id")%>">
							<input type="text" name="drugreply.adminreply">
							<input type="submit" value="评论">
						</form>
					</td>
				    
				</tr>
				</s:iterator>
        </tbody>
	</table>
</div>
	
    <table style="display:none;">
		<tbody>
			<s:iterator value="drugreplies" var="c">
				<tr>
					<td>评论id：<s:property value="#c.drugreplyid" /></td>
					<td>用户id：<s:property value="#c._user_id" /></td>
					<td>用户名：<s:property value="#c.user.username" /></td>
					<td>药品id:<s:property value="#c._drug_drugid" /></td>
					<td>药品名称：<s:property value="#c.drug.drugtitle" /></td>
					<td>是否是根评论：<s:property value="#c.pid" /></td>
					<td>是否是叶子评论：<s:property value="#c.rootid" /></td>
					<td>评论内容：<s:property value="#c.replytext" /></td>
					<td>评论日期：<s:property value="#c.replydate" /></td>
					<td>管理员回复：<s:property value="#c.adminreply" /></td>
					<td>
						<form action="Admin/Admin-adminreplyinput" method="post"> 
							<input type="text" name="drugreply.drugreplyid" style="display:none;" value="<s:property value="#c.drugreplyid" />">
							<input type="text" name="drugreply._admin_id" style="display:none;" value="<%=session.getAttribute("id")%>">
							<input type="text" name="drugreply.adminreply">
							<input type="submit" value="评论">
						</form>
					</td>
				</tr>
			</s:iterator>

		</tbody>
	</table>
  </body>
</html>
