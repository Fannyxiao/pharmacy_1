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

<title>My JSP 'User-index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/alert.css" />
<style>
a:link {
	color: #686868;
	text-decoration: none;
}

a:visited {
	color: #686868;
	text-decoration: none;
}

a:hover {
	color: #6495ed;
	text-decoration: none;
}

a:active {
	color: #686868;
	text-decoration: none;
}

.big {
	width: 75%;
	height: 600px;
	border: 1px solid #ccc;
	margin: 20px auto;
	padding: 0px;
}

dl {
	width: 100%;
	height: 600px;
	text-align: center;
	margin-top: 0px;
}

dd {
	margin: 0;
	width: 80%;
	height: 600px;
	overflow: hidden;
	float: right;
}

dt {
	position: absolute;
	left: 200px;
}

#a {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#b {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#c {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#c {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#d {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#e {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#f {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

#g {
	width: 100%;
	height: 600px;
	border-left: 1px solid #ccc;
}

dt a {
	display: block;
	margin: 1px;
	width: 150px;
	height: 20px;
	text-align: left;
	font-size: 15px;
	color: #ccc;
	text-decoration: none;
	background: #fff;
	padding-left: 15px;
	padding-top: 10px;
}

dt a:hover {
	border-left: 3px solid #ff8c00;
}

.all {
	margin: 0px auto;
	padding: 50px;
	width: 100%;
	height: 600px;
	text-align: left;
	background:url(images/12.png)；

}

p {
	color: #ff6437;
	font-size: 30px;
}

.zhuti {
	color: #789;
	font-size: 15px;
	line-height: 40px;
	text-align: left;
}

.biao {
	height: 35px;
	font-size: 18px;
	text-align: left;
	margin-top: 5px;
}

.tab {
	width: 900%;
	height: 50px;
	font-family: "幼圆";
}

.kuang1 {
	width: 280px;
	height: 30px;
	border: 1px solid #e6e6fa;
}

.kuang2 {
	width: 60px;
	height: 32px;
	background-color: #fff;
}

.kuang2:hover {
	background-color: #0083CE;
}

.kuang3 {
	width: 100px;
	height: 32px;
	background-color: #fff;
}

.kuang3:hover {
	background-color: #0083CE;
}

.kuang4 {
	width: 200px;
	height: 30px;
	border: 1px solid #e6e6fa;
}

.kuang5 {
	width: 120px;
	height: 35px;
	background-color: #0083CE;
	border-radius: 5px;
}

.ding {
	width: 90%;
	height: 500px;
	overflow-y:auto;
}

.ding1 {
	width: 100%;
	height: 40px;
	background-color: #f7f7f7;
}

.ding11 {
	width: 12.3%;
	height: 20px;
	margin: 10px 0px;
	float: left;
	border-right: 1px solid #ccc;
	text-align: center;
	font-size: 12px;
	padding-top: 5px;
}

.ding2 {
	width: 100%;
	height: 120px;
	border: 1px solid #ccc;
	text-align: center;
	font-size: 12px;
	margin-top: 10px;
}

.ding2 a:link {
	color: #000;
	text-decoration: none;
}

.ding2 a:visited {
	color: #000;
	text-decoration: none;
}

.ding2 a:hover {
	color: #e66b1a;
	text-decoration: none;
}

.ding2 a:active {
	color: #000;
	text-decoration: none;
}

td {
	width: 15%;
}

.ding22 {
	height: 20px;
	margin: 10px 0px;
	float: left;
	text-align: center;
	font-size: 14px;
	padding-top: 5px;
}

.ping2 {
	width: 100%;
	border: 1px solid #ccc;
	text-align: center;
	font-size: 12px;
	margin-top: 10px;
	text-align: center;
	padding-top: 20px;
}

.yu {
	height: 300px;
	width: 100%;
	padding: 20px 30px;
	font-size: 15px;
	color: #000;
}

.a {
	color: #DD4F11;
}

.you {
	text-align: center;
	width: 100%;
	color: #adadad;
	padding-top: 100px;
}

.an {
	width: 80%;
	height: 70px;
	border: 1px solid #ccc;
	margin: 20px;
	background-color: #F5F8FA;
}

.an1 {
	width: 20%;
	height: 50px;
	float: left;
	text-align: center;
	padding-top: 20px;
}

.an2 {
	width: 60%;
	height: 50px;
	float: left;
	text-align: center;
	font-size: 12px;
	color: #aaa;
	padding-top: 23px;
}

.an3 {
	width: 20%;
	height: 50px;
	float: right;
	text-align: center;
	padding-top: 15px;
}

.di {
	width: 200px;
	height: 150px;
	float: left;
	font-size: 12px;
	color: #aaa;
	border: 2px solid #ccc;
	border-radius: 2px;
	margin: 0 20px;
}

.di:hover {
	border: 2px solid #0083CE;
	border-radius: 2px;
	margin: 0 20px;
}

.di1 {
	width: 200px;
	height: 75px;
}

.di2 {
	width: 190px;
	height: 20px;
	padding-top: 55px;
	padding-left: 10px;
}

.di2 a:link {
	color: #0083CE;
	text-decoration: none;
}

.di2 a:visited {
	color: #0083CE;
	text-decoration: none;
}

.di2 a:hover {
	color: #EA2492;
	text-decoration: none;
}

.di2 a:active {
	color: #0083CE;
	text-decoration: none;
}

.zi {
	width: 83%;
	height: 500px;
}

.zir {
	width: 15%;
	height: 100px;
	float: right;
	padding: 10px;
	font-size: 12px;
	text-align: center;
}

.zil {
	width: 65%;
	height: 400px;
	float: left;
	padding: 0 50px;
}

.zir a:link {
	color: #0083CE;
	text-decoration: none;
}

.zir a:visited {
	color: #0083CE;
	text-decoration: none;
}

.zir a:hover {
	color: #0083CE;
	text-decoration: none;
}

.zir a:active {
	color: #0083CE;
	text-decoration: none;
}

.zil1 {
	width: 90%;
	height: 320px;
	margin: 20px auto;
	font-size: 13px;
	color: #666;
}

.zil1 a:link {
	color: #0083CE;
	text-decoration: none;
}

.zil1 a:visited {
	color: #0083CE;
	text-decoration: none;
}

.zil1 a:hover {
	color: #EA2492;
	text-decoration: none;
}

.zil1 a:active {
	color: #0083CE;
	text-decoration: none;
}

.show {
	width: 550px;
	height: 330px;
	background: url(images/a6.jpg);
	background-size: 100% 100%;
}

.show1 {
	width: 550px;
	height: 30px;
}

.guan {
	font-size: 15px;
}

p a:link {
	color: #fff;
	text-decoration: none;
}

p a:visited {
	color: #fff;
	text-decoration: none;
}

p a:hover {
	color: #fff;
	text-decoration: none;
}

p a:active {
	color: #fff;
	text-decoration: none;
}
</style>

</head>
<body>
<jsp:include page="../Commom/top.jsp"></jsp:include>
	<div class="big">
		<dl>

			<dt>
				<div style="margin:10px auto;">
					<s:if test="%{#session.image != null}">
						<img src="upload/<%=session.getAttribute("image")%>"
							style="width: 120px;height:120px; border-radius:60px; vertical-align: middle;" />
					</s:if>

				</div>
				<div class="biao">
					<b>订单查询</b>
				</div>
				<a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#a"
					title="">我的订单</a> <a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#b"
					title="">购物车</a><br>
				<div class="biao">
					<b>账户信息</b>
				</div>
				<a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#c"
					title="">账户查询</a> <a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#d"
					title="">我的优惠劵</a><br>
				<div class="biao">
					<b>个人信息管理</b>
				</div>
				<a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#e"
					title="">编辑个人资料</a> <a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#f"
					title="">安全中心</a> <a
					href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#g"
					title="">地址管理</a>

			</dt>


			<dd>
				<div id="a">
					<div class="all">
						<div class="tab">
							<table>
								<tr>
									<td style="width:20%;font-size:18px;">我的订单</td>
									<td style="text-align:right;"><input class="kuang1"
										type="text" value="请输入商品名称、商品ID、订单号" style="color:#888888;"
										onfocus="javascript:this.style.color='#000000';if(this.value=='请输入商品名称、商品ID、订单号')this.value='';"
										onblur="javascript:if(this.value==''){this.value='请输入商品名称、商品ID、订单号';this.style.color='#888888';}" /></td>
									<td><form>
											<input type="submit" value="搜索" class="kuang2">
										</form></td>
								</tr>
							</table>
						</div>
						<div class="ding">
							<div class="ding1">
								<div class="ding11">
									<form>
										<select name="dingdan">
											<option value="近期订单">全部订单</option>
											<option value="历史订单">历史订单</option>
										</select>
									</form>

								</div>
								<div class="ding11">
									<a href="">全部（0）</a>
								</div>
								<div class="ding11">
									<a href="">待支付（0）</a>
								</div>
								<div class="ding11">
									<a href="">待发货（0）</a>
								</div>
								<div class="ding11">
									<a href="">已发货（0）</a>
								</div>
								<div class="ding11">
									<a href="">待评价（0）</a>
								</div>
								<div class="ding11">
									<a href="">已取消（0）</a>
								</div>
								<div class="ding11" style="border-right:0px;">
									<a href="">已完成（0）</a>
								</div>
							</div>
							<s:iterator value="orders" var="o">
								<div class="ding2">

									<table style="text-align:center;font-size:12px;">
										<tr>
											<td><s:property value="#o.orderdate" /></td>
											<td>订单编号：<s:property value="#o.orderid" /></td>
											<td></td>
											<td><img src="images/a2.png">我家的药</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td><img
												src="upload/<s:property value="#o.drug.image" />"
												style="width:80px;height:80px;"></td>
											<td><s:property value="#o.drug.drugtitle" /></td>
											<td><s:property value="#o.drug.price" /></td>
											<td><s:property value="#o.number" /></td>
											<td><s:property value="#o.number * #o.drug.price" /></td>
											<td><s:if test="#o.hassend == 1">
													<s:if test="#o.hasreceive == 1">
											交易成功
										</s:if>
													<s:if test="#o.hasreceive == 0">
											未收货
										</s:if>
												</s:if> <br> <br> <a
												href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#"
												id="<s:property value='#o.orderid' />">订单详情</a> <script
													type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
												<script type="text/javascript" src="js/jquery.alert.js"></script>
												<script type="text/javascript">
													$(function() {

														$(
																"#<s:property value='#o.orderid' />")
																.click(
																		function() {
																			hiBox(
																					'.showbox',
																					'',
																					580,
																					'',
																					'',
																					'.a_close');
																		});

													});
												</script></td>
											<td>追加评论 <br> <br> 再次购买
											</td>
										</tr>

									</table>
									<div class="showbox" style="display:none;" class="show">
										<div class="show">
											<table class="show1">
												<tr>
													<td>用户名：<s:property value="#o.user.username" /></td>
													<td>订单编号：<s:property value="#o.orderid" /></td>
													<td></td>
												</tr>
											</table>
											<table class="show1">
												<tr>
													<td>药品名称：<s:property value="#o.drug.drugtitle" /></td>
												</tr>
											</table>
											<table class="show1">
												<tr>
													<td>药品数量：<s:property value="#o.number" /></td>
													<td>总价：<s:property value="#o.number * #o.drug.price" /></td>
												</tr>
											</table>
											<table class="show1">
												<tr>
													<td>地址：<s:property value="#o.receive" /></td>
												</tr>
											</table>
											<table class="show1">
												<tr>
													<td>备注：<s:property value="#o.memo" /></td>
												</tr>
											</table>
											<table class="show1">
												<tr>
													<td>下单日期：<s:property value="#o.orderdate" /></td>
												</tr>
											</table>
											<s:if test="#o.hassend == 1">
												<table class="show1">
													<tr>
														<td>发货日期：<s:property value="#o.shipdate" /></td>
													</tr>
												</table>
											</s:if>
											<s:if test="#o.hassend == 0">
												<table class="show1">
													<tr>
														<td>未发货</td>
													</tr>
												</table>
											</s:if>
											<s:if test="#o.hasreceive == 0">
												<table class="show1">
													<tr>
														<td>订单状态：<a
															href="Order/Order-receive?order.orderid=<s:property value="#o.orderid" />&&user.id=<%=session.getAttribute("id")%>">确认收货</a></td>
													</tr>
												</table>
											</s:if>
											<s:if test="#o.hasreceive == 0">
												<table class="show1">
													<tr>
														<td>订单状态：已收货</td>
													</tr>
												</table>
											</s:if>
											<p style="text-align:right">
												<a
													href="http://localhost:8080/pharmacy/User/User-index?user.id=<%=session.getAttribute("id")%>#"
													class="a_close guan">关闭</a>
											</p>
										</div>
									</div>
								</div>
							</s:iterator>
						</div>
					</div>
				</div>

				<div id="b">
					<div class="all">
						<div class="tab">
							<table>
								<tr>
									<td style="width:30%;font-size:18px;">购物车</td>
									<td></td>
								</tr>
							</table>
						</div>
						<div class="ding">
							<div class="ding1" style="font-size:14px;">
								<div class="ding22" style="width:25%;">药品名称</div>
								<div class="ding22" style="width:10%">数量</div>
								<div class="ding22" style="width:10%">时间</div>
								<div class="ding22" style="width:10%">购买</div>
								<div class="ding22" style="width:35%">更改数量</div>
								<div class="ding22" style="width:10%">删除</div>

							</div>
							
							<s:iterator value="cars" var="c">
							<div class="ping2">
								<table style="width:100%;text-align:center;font-size:12px;">

										<tr>
											<td style="width:25%"><s:property
													value="#c.drug.drugtitle" /></td>
											<td style="width:10%"><s:property value="#c.number" /></td>
											<td style="width:10%"><s:property value="#c.time" /></td>
											<td style="width:10%"><a href="Order/Order-addorderinput?car.carid=<s:property value="#c.carid" />">购买</a></td>
											<td style="width:35%"><form
													action="Car/Car-addcarnumber?user.id=<%=session.getAttribute("id")%>"
													method="post">
													<input type="text" style="display:none;" name="car.carid"
														value="<s:property value="#c.carid" />"> <input style="width:70px;"
														type="number" name="num"> <input type="submit"
														value="增加">

												</form></td>
											<td style="width:10%"><a
												href="Car/Car-deletecar?car.carid=<s:property value="#c.carid" />&&user.id=<%=session.getAttribute("id")%>">删除商品</a></td>
										</tr>
									</table>
							</div>
							</s:iterator>
							
						</div>
					</div>
				</div>

				<div id="c">
					<div class="all">
						<div class="tab">
							<table>
								<tr>
									<td style="width:30%;font-size:18px;">账户查询</td>
									<td></td>
								</tr>
							</table>
						</div>
						<div class="yu">
							用户名：<%=session.getAttribute("username")%><br> <br> 性别：<%
								 	try {
								 		if (session.getAttribute("sex").equals(null))
								 			out.write("保密");
								 		else
								 			out.write(session.getAttribute("sex").toString());
								 	} catch (NullPointerException e) {
								 		out.write("保密");
								 	}
								 %><br> <br> 手机号：<%=session.getAttribute("phone")%><br>
							<br> 邮箱：<%
								try {
									if (session.getAttribute("email").equals(null))
										out.write("空");
									else
										out.write(session.getAttribute("email").toString());
								} catch (NullPointerException e) {
								}
							%><br> <br> 您的剩余积分为：<font class="a"><%=session.getAttribute("overintegral")%></font><br>
							<br> 您的总积分为：<font class="a"><%=session.getAttribute("allintegral")%></font><br>
							<br>
							<form action="User/User-addintegral" method="post">
								<input type="text" value="<%=session.getAttribute("id")%>"
									name="user.id" style="display:none;"> <input
									type="text" value="<%=session.getAttribute("allintegral")%>"
									name="user.allintegral" style="display:none;"> <input
									type="text" value="<%=session.getAttribute("overintegral")%>"
									name="user.overintegral" style="display:none;">

								<table style="width:450px;">
									<tr>
										<td>充值积分：</td>
										<td><input class="kuang4" type="number" name="number"
											style="color:#888888;" /></td>
										<td><input type="submit" value="确定充值" class="kuang3"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>

				<div id="d">
					<div class="all">
						<div class="tab">
							<table>
								<tr>
									<td style="width:30%;font-size:18px;">我的优惠劵</td>
									<td></td>
								</tr>
							</table>
						</div>
						<div class="you">您目前没有优惠劵</div>

					</div>
				</div>

				<div id="e">
					<div class="all">
						<div class="tab">
							<table>
								<tr>
									<td style="width:30%;font-size:18px;">编辑我的资料</td>
									<td></td>
								</tr>
							</table>
						</div>
						<form action="User/User-revise" method="post"
							enctype="multipart/form-data">
							<div class="zi">
								<div class="zir">
									<img src="images/a4.gif"><br> <input type="file"
										name="headImg">
								</div>
								<div class="zil">
									<input type="text" value="<%=session.getAttribute("id")%>"
										name="user.id" style="display:none;">
									<table class="zil1">
										<tr>
											<td>手机号：</td>
											<td><input class="kuang4" type="text" name="user.phone"
												value="<%=session.getAttribute("phone")%>"></td>
										</tr>
										<tr>
											<td>邮箱：</td>
											<td><input class="kuang4" type="text" name="user.email"
												value="<%try {
				if (session.getAttribute("email").equals(null))
					out.write("");
				else
					out.write(session.getAttribute("email").toString());
			} catch (NullPointerException e) {
			}%>"></td>
										</tr>
										<tr>
											<td>年龄：</td>
											<td><input class="kuang4" type="number" name="user.age"
												value="<%try {
				if (session.getAttribute("age").equals(null))
					;
				else
					out.write(session.getAttribute("age").toString());
			} catch (NullPointerException e) {
			}%>"></td>
										</tr>
										<tr>
											<td>性别：</td>
											<td><input class="kuang4" type="text" name="user.sex"
												value="<%try {
				if (session.getAttribute("sex").equals(null))
					out.write("男/女");
				else
					out.write(session.getAttribute("sex").toString());
			} catch (NullPointerException e) {
				out.write("男/女");
			}%>"></td>
										</tr>
										<tr>
											<td>您的地址:</td>
											<td><input class="kuang4" type="text" value="山东财经大学"></td>
										</tr>
										<tr>
											<td><input type="submit" value="提交修改" class="kuang5">
											</td>
										</tr>
									</table>


								</div>
							</div>
						</form>
					</div>
				</div>


	<div id="f">
		<div class="all">
			<div class="tab">
				<table>
					<tr>
						<td style="width:30%;font-size:18px;">安全中心</td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="an">
				<div class="an1">
					<b>密码修改</b>
				</div>
				<div class="an2">经常的更换您的账号密码，并且不要和其他账号共用同一个密码</div>
				<div class="an3">
					<input type="submit" value="修改密码" class="kuang3">
				</div>
			</div>

			<div class="an">
				<div class="an1">
					<b>绑定邮箱</b>
				</div>
				<div class="an2">邮箱将是您的有效身份证，在保证安全的同时还可以提供更便捷的订单提醒服务</div>
				<div class="an3">
					<input type="submit" value="立即绑定" class="kuang3">
				</div>
			</div>

			<div class="an">
				<div class="an1">
					<b>绑定手机</b>
				</div>
				<div class="an2">您绑定的手机：158****2156</div>
				<div class="an3">
					<form>
						<input type="submit" value="修改手机" class="kuang3">
					</form>
				</div>
			</div>

		</div>
	</div>

	<div id="g">
		<div class="all">
			<div class="tab">
				<table>
					<tr>
						<td style="width:30%;font-size:18px;">地址管理</td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="di">
				<div class="di1">
					<table>
						<tr>
							<td><b>超超</b>&nbsp;&nbsp;收</td>
							<td><a href="">设为常用地址</a></td>
						</tr>
					</table>
					<br>
					<table>
						<tr>
							<td>山东省济南市历下区二环东路7366号</td>
						</tr>
					</table>
					<table>
						<tr>
							<td>15853122156</td>
						</tr>
					</table>
				</div>
				<div class="di2">
					<table>
						<tr>
							<td><a href="">编辑</a></td>
							<td style="text-align:right;"><a href="">删除</a></td>
						</tr>
					</table>
				</div>
			</div>


		</div>
	</div>

	</dd>
	</dl>

	</div>



	<div style="display:none;">
		<s:if test="%{#session.image != null}">
			<img src="upload/<%=session.getAttribute("image")%>"
				style="width: 50px;height: 50px; border-radius:25px; vertical-align: middle;" />
		</s:if>
		昵称：<%=session.getAttribute("username")%>
		手机号：<%=session.getAttribute("phone")%>
		邮箱：
		<%
			try {
				if (session.getAttribute("email").equals(null))
					out.write("空");
				else
					out.write(session.getAttribute("email").toString());
			} catch (NullPointerException e) {
			}
		%>
		年龄：<%
			try {
				if (session.getAttribute("age").equals(null))
					out.write("未知");
				else
					out.write(session.getAttribute("age").toString());
			} catch (NullPointerException e) {
			}
		%>
		性别：
		<%
			try {
				if (session.getAttribute("sex").equals(null))
					out.write("保密");
				else
					out.write(session.getAttribute("sex").toString());
			} catch (NullPointerException e) {
				out.write("保密");
			}
		%>
		我的剩余积分：<%=session.getAttribute("overintegral")%>
		我的总积分：<%=session.getAttribute("allintegral")%>
		<a href="Car/Car-mycarlist?user.id=<%=session.getAttribute("id")%>">我的购物车</a>
		<a
			href="Order/Order-myorderlist?user.id=<%=session.getAttribute("id")%>">我的订单</a>

		<form action="User/User-addintegral" method="post">
			<input type="text" value="<%=session.getAttribute("id")%>"
				name="user.id" style="display:none;"> <input type="text"
				value="<%=session.getAttribute("allintegral")%>"
				name="user.allintegral" style="display:none;"> <input
				type="text" value="<%=session.getAttribute("overintegral")%>"
				name="user.overintegral" style="display:none;"> <input
				type="number" name="number"> <input type="submit"
				value="充值积分">
		</form>
	</div>

 <div style="width:100%;height:300px;background:#f0f0f0;padding:30px;">
 	<table style="width:78%;line-height:30px;font-size:14px;margin:30px auto;">
 		<tr>
          <td>购物指南</td>
          <td><a href="#">购物流程</a></td>
          <td><a href="#">会员须知</a></td>
          <td><a href="#">发票制度</a></td>
          <td><a href="#">服务承诺</a></td>
          <td><a href="#">服务协议</a></td>
        </tr>
      
      
        <tr>
          <td>配送方式</td>
          <td><a href="#">上门自提</a></td>
          <td><a href="#">配送范围</a></td>
          <td><a href="#">商品验货</a></td>
          <td><a href="#">签收快递运输</a></td>
        </tr>
      
      
        <tr>
          <td>支付方式</td>
          <td><a href="#">货到付款</a></td>
          <td><a href="#">在线支付</a></td>
          <td><a href="#">异地支付</a></td>
          <td><a href="#">公司转账</a></td>
        </tr>
      
      
        <tr>
          <td>售后服务</td>
          <td><a href="#">退换货原则</a></td>
          <td><a href="#">退换货地址</a></td>
          <td><a href="#">退款说明</a></td>
        </tr>
      
      
        <tr>
          <td>自助服务</td>
          <td><a href="#">退换货原则</a></td>
          <td><a href="#">退换货地址</a></td>
          <td><a href="#">退款说明</a></td>
        </tr>
      
      
        <tr>
          <td>帮助信息</td>
          <td><a href="#">价格保护</a></td>
          <td><a href="#">常见问题</a></td>
          <td><a href="#">找回密码</a></td>
          <td><a href="#">联系我们</a></td>
        </tr>
      
      
        <tr>
          <td>关于信药</td>
          <td><a href="#">我们的团队</a></td>
          <td><a href="#">帮助中心</a></td>
          <td><a href="#">网站地图</a></td>
          <td><a href="#">版权说明</a></td>
        </tr>
 	</table>
 </div>
<div class="copy">    山财信药药业有限公司  备05022371  </div>
</body>
</html>