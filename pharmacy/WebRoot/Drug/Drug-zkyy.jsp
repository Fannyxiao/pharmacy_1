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

<title>My JSP 'zkyy.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/css_whir.css" rel="stylesheet" type="text/css" />
<script src="script/slider.js" type="text/javascript"></script>
<script src="script/Columns.js" type="text/javascript"></script>
<script src="script/scrollpic.js" type="text/javascript"></script>
<script type="text/javascript" src="script/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="script/jquery.SuperSlide.2.1.1.js"></script>
</head>

<body>
<jsp:include page="../Commom/top.jsp"></jsp:include>
	<div class="mainbox">
		<div class="position">
			<span>专科用药</span>
		</div>
		<div class="le230">
			<!-- sideMenu S -->

			<div class="xgfl">
				<div class="titlei5">
					<h1>
						<a href="">销售排行榜</a>
					</h1>
				</div>
				<div class="rxphC1">
					<dl class="rxphli">
						<dt>
							<a href=""><img src="images/pic04.jpg" width="50" height="60" /></a>
						</dt>
						<dd>
							<a href="">洋河蓝色经典海之蓝 52度 480ml</a><br /> ￥19.00
						</dd>
					</dl>
					<dl class="rxphli">
						<dt>
							<a href=""><img src="images/pic04.jpg" width="50" height="60" /></a>
						</dt>
						<dd>
							<a href="">洋河蓝色经典海之蓝 52度 480ml</a><br /> ￥19.00
						</dd>
					</dl>
					<dl class="rxphli">
						<dt>
							<a href=""><img src="images/pic04.jpg" width="50" height="60" /></a>
						</dt>
						<dd>
							<a href="">洋河蓝色经典海之蓝 52度 480ml</a><br /> ￥19.00
						</dd>
					</dl>
					<dl class="rxphli">
						<dt>
							<a href=""><img src="images/pic04.jpg" width="50" height="60" /></a>
						</dt>
						<dd>
							<a href="">洋河蓝色经典海之蓝 52度 480ml</a><br /> ￥19.00
						</dd>
					</dl>
				</div>
			</div>
			<div class="xgfl">
				<a href=""><img src="images/pic03.jpg" width="220" height="305" /></a>
			</div>
			<div class="xgfl">
				<a href=""><img src="images/pic03.jpg" width="220" height="305" /></a>
			</div>
		</div>
		<div class="ri995">
			<!--相关浏览 S-->

			<div class="search_box">
				<div>
					<span>品牌</span> <a href="#">恩百（ANB）</a><a href="">汤臣倍健（BY-HEALTH）</a><a
						href="">自然之宝（Nature's Bounty）</a><a href="">安利（Amway）</a><a
						href=""> 健安喜（GNC）</a>
				</div>
				<div>
					<span>营养成分</span> <a href="#"> 维生素B12</a><a href="#">维生素D </a> <a
						href="#">维生素D </a><a href="#">钙</a><a href="#">锌</a><a href="#">铁</a><a
						href="#"> 维生素B12</a><a href="#">维生素A </a><a href="#">维生素B </a><a
						href="#">维生素C</a><a href="#">维生素D </a><a href="#"> 维生素A</a>
				</div>
				<div>
					<span>价格</span> <a href="#">0-50元</a><a href="#">0-50元</a><a
						href="#">0-50元</a><a href="#">0-50元</a><a href="#">0-50元</a>
				</div>
				<div>
					<span>按人群找</span> <a href="#">男士保健</a><a href="#">女士保健</a><a
						href="#">儿童保健</a><a href="#">中老年保健</a><a href="#">综合</a>
				</div>
			</div>
			<div class="titlei7">
				<ul>
					<li>排序：</li>
					<li><a href="#" class="aon"> 销量</a></li>
					<li><a href="#">价格</a></li>
					<li><a href="#">评论数</a></li>
					<li><a href="#">上架时间</a></li>
				</ul>
				<div class="allnum">
					<span style="color:#FF7300">共3085个商品</span>&nbsp;&nbsp;<span
						style="margin-top:10px; display:block; float:right;"><img
						src="images/pages.jpg" /></span>
				</div>
			</div>
			<div class="prolist">
				<ul>
					<s:iterator value="drugs" var="s">
						<s:if test="#s.drugtype == 2">
							<li><a
								href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
									<s:if test="#s.image != null">
										<img src="upload/<s:property value="#s.image" />"
											style="width:215px;height:190px;" />
									</s:if> <a
									href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:property
											value="#s.drugtitle" /></a> <em class="money">￥<s:property
											value="#s.price" /></em>
									<p>
										<span>月销量：158799</span><a
											href="Car/Car-addcar?drug.drugid=<s:property value="drug.drugid" />&&user.id=<%=session.getAttribute("id")%>"
											class="jrgw"><img src="images/jrgw.jpg" /></a>
									</p></li>
						</s:if>
					</s:iterator>
				</ul>





				<div class="page">
					<a href="#" class="prev">上一页</a><a href="#" class="on">1</a><a
						href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a
						href="#" class="prev">下一页</a><a href="" class="total">第1页/共23页</a>转到
					<input name="page" type="text" class="inputpage" /> 页 <input
						name="button" type="button" value=" GO " class="btn_go" onclick="" />
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../Commom/buttom.jsp"></jsp:include>
</body>
</html>
