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

<title>My JSP 'Drug-adddrug.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style>
.input{
	padding-top:10px;
	width:960px;
	height:450px;
	margin:0 auto;
	font-size:20px;
	font-weight:normal;
	background:url(images/19.png);
	background-repeat:no-repeat;
	background-position: 130px center;
	padding-top: 20px;
	margin-left:-140px;
	margin-top:-20px;
	padding-left:300px;
}
.input input{
	font-size:18px;
	border-radius:3px;
	border:0px;
}
.input textarea{
	height:40px;
	border-radius:5px;
	width:221px;
}
.submit{
width:100px;

}
</style>
</head>

<body>
<div class="input">
<center><h3>发布药品</h3></center>
	<form
		action="Drug/Drug-adddrugInput?admin.id=<%=session.getAttribute("id")%>"
		enctype="multipart/form-data" method="post">
	
			<input type="text" style="display:none;" name="drug._admin_id"
				value="<%=session.getAttribute("id")%>">
				药品种类: <input type="radio" name="drug.drugtype" value="1">
				家庭常备<input type="radio" name="drug.drugtype" value="2">
				专科用药<input type="radio" name="drug.drugtype" value="3">
				医疗器械 <input type="radio" name="drug.drugtype" value="4">
				滋补保健<input
				type="radio" name="drug.drugtype" value="5">
				维生素钙<input
				type="radio" name="drug.drugtype" value="6">
				母婴用品
				<br><br>
			商品名称：<input type="text" name="drug.drugtitle"><br><br>
			商品描述：<textarea name="drug.drugtext"></textarea><br><br>
			商品单价：<input type="text" name="drug.price">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="submit" type="submit" value="增加"><br><br>
			商品总量：<input type="number" name="drug.drugnumber"><br><br>
			商品图片：<input type="file" name="headImg"><br>
<br>
		
	
	
	</form>
</div>
<div  style="display:none;">
	<form
		action="Drug/Drug-adddrugInput?admin.id=<%=session.getAttribute("id")%>"
		enctype="multipart/form-data" method="post">
		<ul>
			<input type="text" style="display:none;" name="drug._admin_id"
				value="<%=session.getAttribute("id")%>">
			<li>药品种类: <input type="radio" name="drug.drugtype" value="1">家庭常备
				<input type="radio" name="drug.drugtype" value="2">专科用药 <input
				type="radio" name="drug.drugtype" value="3">医疗器械 <input
				type="radio" name="drug.drugtype" value="4">滋补保健<input
				type="radio" name="drug.drugtype" value="5">维生素钙<input
				type="radio" name="drug.drugtype" value="6">母婴用品
			</li>
			<li>商品名称：<input type="text" name="drug.drugtitle"></li>
			<li>商品描述：<textarea name="drug.drugtext"></textarea></li>
			<li>商品单价：<input type="text" name="drug.price"></li>
			<li>商品总量：<input type="number" name="drug.drugnumber"></li>
			<li>商品图片：<input type="file" name="headImg"></li>

			<li><input type="submit" value="增加"></li>
		</ul>
	</form>
	</div>
</body>


</html>
