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

<title>My JSP 'Index-drugdetail.jsp' starting page</title>

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
</head>
<body>

<jsp:include page="../Commom/top.jsp"></jsp:include>

<!--主体 S-->
<div class="mainbox">
  <!--商品简介 S-->
  <div class="c-top">
    <div class="c-pic" style="margin-left:30px;">
      <div class="bi-pic"><s:if test="drug.image != null">
					<img src="upload/<s:property value="drug.image" />" width="385"
						height="400" />
				</s:if></div>
      <div class="sm-pic"><img src="images/c-Spic.jpg" width="350" height="62" /></div>
    </div>
    <div class="c-pd" style="width:758px;">
      <div class="c-T"> <s:property value="drug.drugtitle" /></div>
    <p>百 信 价：<span>￥<s:property value="drug.price" /></span></p>
	<p>市 场 价：<del>￥109.00</del></p>
	<div>商品描述：<span style="color:#FF7E15"><s:property value="drug.drugtext" /></span></div>
	<p>剩 余 量：<s:property value="drug.drugnumber" /></p>
	<p>上架时间：<s:property value="drug.time" /></p>
	<p style="margin:0px 0 40px; height:35px;">
		<s:if test="drug.drugnumber != 0">
			<a href="Car/Car-addcar?drug.drugid=<s:property value="drug.drugid" />&&user.id=<%=session.getAttribute("id")%>">加入购物车</a>
		</s:if>
		<s:if test="drug.drugnumber == 0">
			
				已售完
			
		</s:if>   </p>
	<div class="tip">
	<p>商品名称：<s:property value="drug.drugtitle" />  
	<p>商品编号：0133253937 </p>
	<p>批准文号：国药准字H31021303</p>
	<p><em style="color:#f00">温馨提示：</em> 部分商品包装更换频繁，如货品与图片不完全一致，请以收到的商品实物为准。</p>
	</div>
    </div>
  </div>
  <!--商品简介 E-->
    <!--相关浏览 S-->
    <!--相关浏览 E-->
	
	<div class="le230">
	<div class="xgfl">
	<div class="titlei5">
	 <h1 onmouseover="isShowIndex1('spc_0','dtc_0','c_','Smore1','2')"id="spc_0" class="hover" ><a href="">相关分类</a></h1>
      <h1 onmouseover="isShowIndex1('spc_1','dtc_1','c_','Smore1','2')" id="spc_1"><a href="">推荐品牌</a> </h1>
	</div>
	<ul id="dtc_0">
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	</ul>
	<ul id="dtc_1" style=" display:none;">
	<li><a href="">锯洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	<li><a href="">锯棕榈洋参</a><a href="">水飞蓟</a></li>
	</ul>
	</div>
	<div class="xgfl">
	<div class="titlei5">
	 <h1><a href="">销售排行榜</a></h1>
	 </div>
	 <div class="rxphC1">
            <dl class="rxphli">
              <dt><a href=""><img src="images/pic04.jpg"  width="50" height="60"/></a></dt>
              <dd><a href="">洋河蓝色经典海之蓝 52度 480ml</a><br />
                ￥19.00</dd>
            </dl>
            <dl class="rxphli">
              <dt><a href=""><img src="images/pic04.jpg"  width="50" height="60"/></a></dt>
              <dd><a href="">洋河蓝色经典海之蓝 52度 480ml</a><br />
                ￥19.00</dd>
            </dl>
            <dl class="rxphli">
              <dt><a href=""><img src="images/pic04.jpg"  width="50" height="60"/></a></dt>
              <dd><a href="">洋河蓝色经典海之蓝 52度 480ml</a><br />
                ￥19.00</dd>
            </dl>
            <dl class="rxphli">
              <dt><a href=""><img src="images/pic04.jpg"  width="50" height="60"/></a></dt>
              <dd><a href="">洋河蓝色经典海之蓝 52度 480ml</a><br />
                ￥19.00</dd>
            </dl>
          </div>
	</div>
	<div class="xgfl">
	<a href=""><img src="images/pic03.jpg"  width="220" height="305"/></a>
	</div><div class="xgfl">
	<a href=""><img src="images/pic03.jpg"  width="220" height="305"/></a>
	</div>
	</div>
	<div class="ri995">
		<div class="titlei6">                                        
		 <h1 class="hover" >评论列表</h1>
		</div>
		<div id="dta_0">
			<div class="ri995_0">
				<form action="Index/Index-reply?drugid=<s:property value="drug.drugid" />" enctype="multipart/form-data" method="post">
					<input type="text" style="display:none;" name="drugreply._user_id"
							value="<%=session.getAttribute("id")%>">
		 			<input type="text" style="display:none;" name="drugreply._drug_drugid" value="<s:property value="drug.drugid" />">
				    <input type="text" style="display:none;" name="drugreply.pid" value="0">
					<input type="text" style="display:none;" name="drugreply.rootid" value="0">
				    <div class="ri995_0_1">
				    	<p>评论：</p><textarea name="drugreply.replytext"></textarea>
				    </div>
				    <div class="ri995_0_2">
				    	<p>添加图片:</p><input type="file" name="headImg">
				    </div>
				    <div class="ri995_0_3">
				    	<p>&nbsp;</p>
				    	<input class="submit" type="submit" value="增加">
				    </div>
				</form>
			</div>
			<div class="ri995_1">
				<s:iterator value="drugreplies" var="s">
					<s:if test="#s.rootid == 0">
						<s:if test="#s.user.image != null">
							<img src="upload/<s:property value="#s.user.image" />" width="30" height="30" />
						</s:if>
						<s:property value="#s.user.username" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:property value="#s.replydate" />
						<p>
							<s:property value="#s.replytext" />
						</p>
						<s:if test="#s.image != null">
							<img src="upload/<s:property value="#s.image" />" width="120" height="100" />
						</s:if>
						<p>管理员回复：<s:property value="#s.adminreply" /></p>
						<div class="ri995_1_1">
							<s:iterator value="drugreplies" var="c">
								<s:if test="#c.rootid == 1 && #c.pid == #s.drugreplyid">
									<s:if test="#c.user.image != null">
										<img src="upload/<s:property value="#c.user.image" />"width="30" height="30" />
									</s:if>
									<s:property value="#c.user.username" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<s:property value="#c.replydate" />
									<p>
										<s:property value="#c.replytext" />
									</p>
									<s:if test="#c.image != null">
										<img src="upload/<s:property value="#c.image" />"width="120" height="100" />
									</s:if>
									<p>管理员回复<s:property value="#s.adminreply" /></p>
								</s:if>
							</s:iterator>
							
							<div class="ri995_1_1_1">
								<form
									action="Index/Index-reply?drugid=<s:property value="drug.drugid" />"
									enctype="multipart/form-data" method="post">
										<input type="text" style="display:none;" name="drugreply._user_id" value="<%=session.getAttribute("id")%>">
										<input type="text" style="display:none;" name="drugreply._drug_drugid" value="<s:property value="drug.drugid" />">
										<input type="text" style="display:none;" name="drugreply.pid" value="<s:property value="#s.drugreplyid" />">
										<input type="text" style="display:none;" name="drugreply.rootid" value="1">
										<div class="ri995_2_1">
											<p>评论：</p>
											<textarea name="drugreply.replytext"></textarea>
										</div> 
										<div class="ri995_2_2">
											<p>评论图片：</p>
											<input type="file" name="headImg">
										</div>
										<div class="ri995_2_3">
											<p>&nbsp;</p>
											<input type="submit" value="增加">
										</div>
										<div class="clear"></div>
								</form>
							</div>
						</div>
					</s:if>
				</s:iterator>
				<div>
				</div>
			</div>
		</div>
		<div id="dta_1" style="display:none;"><table width="100%" align="center" class="ggtable">
  <tr>
    <td>品牌: BY－HEALTH/汤臣倍健</td>
    <td>厂名：广东汤臣倍健生物科技股份有限公司</td>
  </tr>
  <tr>
    <td>产品名称:汤臣倍健R鱼油牛磺酸软胶囊</td>
    <td>产地: 中国大陆地区</td>
  </tr>
  <tr>
    <td>计价单位: 瓶</td>
    <td>食品添加剂：无</td>
  </tr>
  <tr>
    <td>规格（粒/袋/ml/g）: 90粒</td>
    <td>配料表：鱼油、牛磺酸、葡萄糖酸锌、蜂</td>
  </tr>
  <tr>
    <td>食用方法及食用量:每日1次，每次3粒</td>
    <td>适宜人群:需要补充钙的成人</td>
  </tr>
  <tr>
    <td>服保质期:24个月</td>
    <td>有效期至:2018-04-01</td>
  </tr>
  <tr>
    <td colspan="2">主要原料:鱼油、牛磺酸、葡萄糖酸锌、蜂蜡、维生素E、明胶、甘油、水、焦糖色、二氧化钛</td>
  </tr>
</table>
		</div>
		<div id="dta_2" style="display:none;">
		</div>
		<div id="dta_3" style="display:none;">
		</div>
		<div id="dta_4" style="display:none;">
		</div>
	</div>
  
</div>
<!--主体 E-->
<!--底部开始-->
<div id="footer">
  <dl>
    <div class="inner">
      <div class="item">
        <dl>
          <dt>购物指南</dt>
          <dd><a href="#">购物流程</a></dd>
          <dd><a href="#">会员须知</a></dd>
          <dd><a href="#">发票制度</a></dd>
          <dd><a href="#">服务承诺</a></dd>
          <dd><a href="#">服务协议</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>配送方式</dt>
          <dd><a href="#">上门自提</a></dd>
          <dd><a href="#">配送范围</a></dd>
          <dd><a href="#">商品验货</a></dd>
          <dd><a href="#">签收快递运输</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>支付方式</dt>
          <dd><a href="#">货到付款</a></dd>
          <dd><a href="#">在线支付</a></dd>
          <dd><a href="#">异地支付</a></dd>
          <dd><a href="#">公司转账</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>售后服务</dt>
          <dd><a href="#">退换货原则</a></dd>
          <dd><a href="#">退换货地址</a></dd>
          <dd><a href="#">退款说明</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>自助服务</dt>
          <dd><a href="#">退换货原则</a></dd>
          <dd><a href="#">退换货地址</a></dd>
          <dd><a href="#">退款说明</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>帮助信息</dt>
          <dd><a href="#">价格保护</a></dd>
          <dd><a href="#">常见问题</a></dd>
          <dd><a href="#">找回密码</a></dd>
          <dd><a href="#">联系我们</a></dd>
        </dl>
      </div>
      <div class="item">
        <dl>
          <dt>关于百信</dt>
          <dd><a href="#">我们的团队</a></dd>
          <dd><a href="#">帮助中心</a></dd>
          <dd><a href="#">网站地图</a></dd>
          <dd><a href="#">版权说明</a></dd>
        </dl>
      </div>
      <div class="rightfoot">
        <div class="weixin"><img src="images/weixin.jpg" /></div>
      </div>
    </div>
  </dl>
</div>
<div class="copy"> Copyright ©安徽百信药业有限公司  皖ICP备05022371 Designed by samxinnet </div>
<!--底部结束-->
<div  style="display:none;">
	<table>
		<tr>
			<td>商品编号： <s:property value="drug.drugid" />
			</td>
		</tr>
		<tr>
			<td>商品名称：<a
				href="Index/Index-drugdetail?drugid=<s:property value="drug.drugid" />">
					<s:property value="drug.drugtitle" />
			</a>
			</td>
		</tr>
		<tr>
			<td>商品描述： <s:property value="drug.drugtext" />
			</td>
		</tr>
		<tr>
			<td>商品价格： <s:property value="drug.price" />
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
		
		<s:if test="drug.drugnumber != 0">
			
			<tr>
				<td><a
					href="Car/Car-addcar?drug.drugid=<s:property value="drug.drugid" />&&user.id=<%=session.getAttribute("id")%>">加入购物车</a></td>
			</tr>
		</s:if>
		<s:if test="drug.drugnumber == 0">
			<tr>
				<td>已售完</td>
			</tr>
		</s:if>
		
	</table>
	<form
		action="Index/Index-reply?drugid=<s:property value="drug.drugid" />"
		enctype="multipart/form-data" method="post">
		<ul>
		<input type="text" style="display:none;" name="drugreply._user_id"
				value="<%=session.getAttribute("id")%>">
	 	<input type="text" style="display:none;"
				name="drugreply._drug_drugid"
				value="<s:property value="drug.drugid" />">
			<input type="text" style="display:none;" name="drugreply.pid"
				value="0">
			<input type="text" style="display:none;" name="drugreply.rootid"
				value="0">
			<li>评论：<textarea name="drugreply.replytext"></textarea>
			</li>
			<li>评论图片：<input type="file" name="headImg"></li> 
			<li><input type="submit" value="增加"></li>
		</ul>
	</form>
	
	<table>
		<tbody>
			<s:iterator value="drugreplies" var="s">
				<s:if test="#s.rootid == 0">
					<tr>
						<td>评论者姓名： <s:property value="#s.user.username" />
						</td>
					</tr>
					<tr>
						<td>评论者头像： <s:if test="#s.user.image != null">
								<img src="upload/<s:property value="#s.user.image" />"
									width="30" height="30" />
							</s:if>
						</td>
					</tr>
					<tr>
						<td>评论： <s:property value="#s.replytext" />
						</td>
					</tr>
					<tr>
						<td>评论时间： <s:property value="#s.replydate" />
						</td>
					</tr>
					<tr>
						<td>评论图片：<s:if test="#s.image != null">
								<img src="upload/<s:property value="#s.image" />" width="100"
									height="100" />
							</s:if></td>
					</tr>
					<tr>
						<td>
							管理员回复：<s:property value="#s.adminreply" />
						</td>
					</tr>
					<tr>
					<td><table style="margin-left:50px;">
								<s:iterator value="drugreplies" var="c">
									<s:if test="#c.rootid == 1 && #c.pid == #s.drugreplyid">
										<tr>
											<td>评论者姓名： <s:property value="#c.user.username" />
											</td>
										</tr>
										<tr>
						<td>
							管理员回复：<s:property value="#s.adminreply" />
						</td>
					</tr>
										<tr>
											<td>评论者头像： <s:if test="#c.user.image != null">
													<img src="upload/<s:property value="#c.user.image" />"
														width="30" height="30" />
												</s:if>
											</td>
										</tr>
										<tr>
											<td>评论： <s:property value="#c.replytext" />
											</td>
										</tr>
										<tr>
											<td>评论时间： <s:property value="#c.replydate" />
											</td>
										</tr>
										<tr>
											<td>评论图片：<s:if test="#c.image != null">
													<img src="upload/<s:property value="#c.image" />"
														width="100" height="100" />
												</s:if></td>
										</tr>
										
									</s:if>
								</s:iterator>
							</table></td>
					</tr>
					<tr>
						<td><button>
								回复
								<s:property value="#s.user.username" />
							</button></td>
						<div style="width:200px; height:200px;">
							<form
								action="Index/Index-reply?drugid=<s:property value="drug.drugid" />"
								enctype="multipart/form-data" method="post">
								<ul>
									<input type="text" style="display:none;"
										name="drugreply._user_id"
										value="<%=session.getAttribute("id")%>">
									<input type="text" style="display:none;"
										name="drugreply._drug_drugid"
										value="<s:property value="drug.drugid" />">
									<input type="text" style="display:none;" name="drugreply.pid"
										value="<s:property value="#s.drugreplyid" />">
									<input type="text" style="display:none;"
										name="drugreply.rootid" value="1">
									<li>评论：<textarea name="drugreply.replytext"></textarea>
									</li>
									<li>评论图片：<input type="file" name="headImg"></li>
									<li><input type="submit" value="增加"></li>
								</ul>
							</form>
						</div>
					</tr>
				</s:if>
			</s:iterator>
		</tbody>
	</table> 
	</div>
	
</body>
</html>
