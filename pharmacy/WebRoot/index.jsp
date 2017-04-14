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
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/css_whir.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/koala.min.1.5.js"></script>
<script src="script/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="script/slider.js" type="text/javascript"></script>
<script src="script/Columns.js" type="text/javascript"></script>
<script src="script/MSClass.js" type="text/javascript"></script>
<script src="script/tab.js"></script>
<style>
.footer1{
height:117px;width:240px;margin:40px;
}
.footer1:hover{
	margin-top:20px;
}
.item{
height:200px;
}
.inner .item{
	width:156px;
}
</style>
  </head>
  
  <body>
  <div class="top">
  <dl>
    <div class="fl">
    	<span class="f_blue">
    	<%try {
			if (session.getAttribute("id") == null)
				out.write("<a href='User/User-loginInput' class='f_blue'>您好！请登录</a></span>");
			else
				out.write("<a href='User/User-destroy'>注销</a>");
			} catch (NullPointerException e) {
				;
			}%>
			 <a href="User/User-registerInput">免费注册</a>
    </div>
    <div class="fr"><a href="http://localhost:8080/pharmacy/Drug/Drug-indexshou"  class="f_blue">信药首页</a> | 
    <a
		href="
    <%try {
				if (session.getAttribute("id") == null)
					out.write("User/User-loginInput");
				else
					out.write("User/User-index");
			} catch (NullPointerException e) {
				;
			}%>
			?user.id=<%=session.getAttribute("id")%>
    ">我的信药</a>
	| <a href="">帮助中心</a> | <a href="">联系客服</a></div>
  </dl>
</div>
<div class="head">
  <div class="fl logo"> <img src="images/logo.jpg" /> </div>
  <div class="search fl">
    <form action="" name="sform" method="post">
      <input type="text" name="key" value=" " class="input1" /><input type="submit" name="submit" value=" " class="btn1"/>
    </form>
    <div class="tags"> 热门搜索：医疗器械&nbsp;&nbsp;&nbsp;滋补保健&nbsp;&nbsp;&nbsp;母婴用品
    </div>
  </div>
  <div class="tel "> </div>
  <div class="clear"></div>
  <div class="tal">
  	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="http://localhost:8080/pharmacy/Drug/Drug-indexshou">首页</a></li>
			<li><a href="Drug/Drug-jtyy">家庭用药</a></li>
			<li><a href="Drug/Drug-zkyy">专科用药</a></li>
			<li><a href="Drug/Drug-ylqx">医疗器械</a></li>
			<li><a href="Drug/Drug-zbbj">滋补保健</a></li>
			<li><a href="Drug/Drug-wssg">维生素钙</a></li>
			<li><a href="Drug/Drug-myyp">母婴用品</a></li>
			<li><a href="/pharmacy/Other/guwm.jsp">关于我们</a></li>
		</ul>
	</div>
	<div class="clear"></div>
	<!-- end #menu -->
<script type="text/javascript">
Qfast.add('widgets', { path: "js/terminator2.2.min.js", type: "js", requires: ['fx'] });  
Qfast(false, 'widgets', function () {
	K.tabs({
		id: 'decoroll2',//焦点图包裹id  
		conId: "decoimg_a2",//大图域包裹id  
		tabId:"deconum2",//小圆点数字提示id
		tabTn:"a",
		conCn: '.decoimg_b2',//大图域配置class       
		auto: 1,//自动播放 1或0
		effect: 'fade',//效果配置
		eType: 'mouseover',// 鼠标事件
		pageBt:true,//是否有按钮切换页码
		bns: ['.prev', '.next'],//前后按钮配置class                          
		interval: 3000// 停顿时间  
	}) 
}) 
</script>
<div id="decoroll2" class="imgfocus">

	<div id="decoimg_a2" class="imgbox">
		<div class="decoimg_b2"><a href=""><img src="images/1.jpg"></a></div>
		<div class="decoimg_b2"><a href=""><img src="images/2.jpg"></a></div>
		<div class="decoimg_b2"><a href=""><img src="images/3.jpg"></a></div>
		<div class="decoimg_b2"><a href=""><img src="images/4.jpg"></a></div>
	</div>
	
	<ul id="deconum2" class="num_a2">
		<li><a href="javascript:void(0)" hidefocus="true" target="_self">植树节</a></li>
		<li><a href="javascript:void(0)" hidefocus="true" target="_self">海昌</a></li>
		<li><a href="javascript:void(0)" hidefocus="true" target="_self">安心之选</a></li>
		<li><a href="javascript:void(0)" hidefocus="true" target="_self">食疗</a></li>
	</ul>
	
</div>
  </div>
</div>
<!--主体 S-->
<div class="mainbox">

  <div class="rxcp">
    <div class="title01">
     <div class="title01_1">
     	<p>&nbsp;</p>
     	<p class="title01_2">家庭用药</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;JIATINGYONGYAO</p>	
     </div>
    </div>
    <div class="rxcpC">
      <div class="le1045">
        <ul>
	      <s:iterator value="drugs" var="s">
	        <s:if test="#s.drugtype == 1">
	          <li>
	            <dl>
	              <dt><a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:if test="#s.image != null">
								<img src="upload/<s:property value="#s.image" />" style="width:140px;height:150px;"/>
							</s:if></a></dt>
	              <dd>
	                <h1><s:property value="#s.drugtitle" /></h1>
	                <p> ￥<s:property value="#s.price" /> </p>
	                <span>剩余量：<s:property value="#s.drugnumber" /></span> <a href="">查看详情</a> </dd>
	            </dl>
	          </li>
	          </s:if>
	         </s:iterator>
        </ul>
      </div>
      <div class="ri200"> <a href=""><img src="images/pic03.jpg" style="width:200px;height:350px;"/></a> </div>
    </div>
  </div>
  <!--热销产品 E-->
  <!--名品特卖 S-->
  <div class="mptm">
    <div class="title02"><div class="title01_1">
       <p>&nbsp;</p>
     	<p class="title01_2">专科用药</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;ZHUANKEYONGYAO</p>	
   </div> </div>
    <div class="mptmC">
      <ul>
         <s:iterator value="drugs" var="s">
       		 <s:if test="#s.drugtype == 2">
       		 <li> <a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
       		 		<s:if test="#s.image != null">
						<img src="upload/<s:property value="#s.image" />" style="width:140px;height:150px;"/>
					</s:if>
					</a>
          		<p><s:property value="#s.drugtitle" /><br />
          		  ￥<s:property value="#s.price" />  </p>
          		<a href="">查看详情</a> </li>
          		
          	</s:if>
         </s:iterator>
      </ul>
    </div>
  </div>
  <!--名品特卖 E-->
  <!--今日团购 S-->
  <div class="jrtg">
    <div class="title03"><div class="title01_1">
     <p>&nbsp;</p>
     	<p class="title01_2">医疗器械</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;YILIAOQIXIE</p>	</div>
     	  </div>
    <div class="jrtgC">
      <ul>
      <s:iterator value="drugs" var="s">
       		 <s:if test="#s.drugtype == 3">
        <li>
          <div class="pic"><a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:if test="#s.image != null">
						<img src="upload/<s:property value="#s.image" />" style="width:200px;height:190px;"/>
					</s:if></a></div>
          <div class="picjj">
            <h1>性价比之王</h1>
            <a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><h2><s:property value="#s.drugtitle" /></h2></a>
            <span></span> <em> ￥<s:property value="#s.price" /> </em> <br />
            <a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">查看详情</a> </div>
        </li>
        
        </s:if>
         </s:iterator>
        
      </ul>
    </div>
  </div>
  <!--今日团购 E-->
  <!--百姓超市 S-->
  <div class="bxcs">
    <div class="title04"><div class="title01_1">
      <p>&nbsp;</p>
     	<p class="title01_2">滋补保健</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;ZIBUBAOJIAN</p>	</div>
    </div>
    <div class="bxcsC">
      <div class="le835">
        <ul>
        <s:iterator value="drugs" var="s">
       		 <s:if test="#s.drugtype == 4">
          <li> 
          	<a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
          		<img src="upload/<s:property value="#s.image" />" width="170" height="160"/>
          	</a> 
          	<a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />" style="display:block; margin-bottom:7px;">
          		<s:property value="#s.drugtitle" /> 
          	</a> 
          	<a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
          		<img src="images/ykj.jpg" />
          	</a>
          	<b><s:property value="#s.price" /></b> 
          </li>
          
          </s:if>
         </s:iterator>
        </ul>
      </div>
      <div class="ri400">
        <div class="flash">
          <div class="slider_wrap">
            <div id="slider_box">
              <ul id="contentList">
                <li><a href="#"><img src="images/pic06.jpg"  width="400" height="465" alt="" /></a></li>
              </ul>
            </div>
        
          
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--百姓超市 E-->
  <!--特价促销 S-->
  <div class="rxcp">
    <div class="title05"><div class="title01_1">
     <p>&nbsp;</p>
     	<p class="title01_2">维生素钙</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;WEISHENGSUGAI</p>	</div>
    </div>
    <div class="rxcpC">
      <div class="le1045">
        <ul>
        <s:iterator value="drugs" var="s">
       		 <s:if test="#s.drugtype == 5">
          <li>
            <dl>
              <dt><a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:if test="#s.image != null">
						<img src="upload/<s:property value="#s.image" />" style="width:140px;height:150px;"/>
					</s:if></a></dt>
              <dd>
                <h1>性价比之王</h1>
                <p> ￥<s:property value="#s.price" /> </p>
                 <a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">查看详情</a> </dd>
            </dl>
          </li>
         </s:if>
         </s:iterator>
        </ul>
      </div>
      <div class="ri200"> <a href=""><img src="images/pic05.jpg" style="width:200px;height:350px;" /></a> </div>
    </div>
  </div>
  <!--特价促销 E-->
  <!--百信药品 S-->
  <div class="bxyp">
    <div class="title06"><div class="title01_1">
      <p>&nbsp;</p>
     	<p class="title01_2">母婴用品</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;MUYINGYONGPIN</p>	</div>
    </div>
    <div class="bxypC">
      <ul>
      <s:iterator value="drugs" var="s">
       	<s:if test="#s.drugtype == 6">
	        <li> 
	        	<a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />"><s:if test="#s.image != null">
							<img src="upload/<s:property value="#s.image" />" style="width:125px;height:130px;"/>
						</s:if></a>
	        	<a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />" style="display:block; margin-bottom:5px;">
	        		<s:property value="#s.drugtitle" />
	        	</a> 
	        	<a href="Index/Index-drugdetail?drugid=<s:property value="#s.drugid" />">
	        		<b>￥<s:property value="#s.price" /></b>  好想买
	        	</a> 
	        </li>
          </s:if>
        </s:iterator>
      </ul>
    </div>
  </div>
  <!--百信药品 E-->
  <!--百信资讯 S-->
 <%--  <div class="bxzx mb10">
    <div class="title07"><div class="title01_1">
    	<p>&nbsp;</p>
     	<p class="title01_2">信药资讯</p>
     	<p class="title01_3">&nbsp;&nbsp;&nbsp;&nbsp;XINYAOZIXUN</p></div>
     </div>
    <div class="bxzxC">
      <div class="le440">
        <div class="titlei3"> 热门活动 </div>
        <dl>
          <dd> <a href=""><img src="images/pic01.jpg" width="65" height="65" /></a> </dd>
          <dt><a href="">特价美国进口食品Kirkland</a>
            <p>特价美国进口食品Kirkland混合坚果零食夏威夷果山核桃仁腰果杏仁
              超级大罐 一次可以吃五种坚果仁</p>
          </dt>
        </dl>
        <dl>
          <dd> <a href=""><img src="images/pic01.jpg" width="65" height="65" /></a> </dd>
          <dt><a href="">特价美国进口食品Kirkland</a>
            <p>特价美国进口食品Kirkland混合坚果零食夏威夷果山核桃仁腰果杏仁
              超级大罐 一次可以吃五种坚果仁</p>
          </dt>
        </dl>
      </div>
      <div class="le305">
        <div class="titlei3"> 每日优惠 </div>
        <div class="le305C">
          <div class="picyh"><a href=""><img src="images/pic01.jpg" width="105" height="180" /></a></div>
          <ul>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
            <li><a href=""> · 中国香菇最大的生产基地...</a></li>
          </ul>
        </div>
      </div>
      <div class="ri245">
        <div class="flash1">
          <div class="slider_wrap1">
            <div id="slider_box1">
              <ul id="contentList1">
                <li><a href="#"><img src="images/ri245.jpg"  width="245" height="240" alt="" /></a></li>
                <li><a href="#"><img src="images/ri245.jpg"  width="245" height="240" alt="" /></a></li>
                <li><a href="#"><img src="images/ri245.jpg"  width="245" height="240" alt="" /></a></li>
              </ul>
            </div>
            <ul id="previewList1">
              <li>1</li>
              <li>2</li>
              <li>3</li>
            </ul>
            <script type="text/javascript">
  	new Marquee(
{
	MSClassID : "slider_box1",
	ContentID : "contentList1",
	TabID	  : "previewList1",
	Direction : 2,
	Step	  : 0.3,
	Width	  : 185,
	Height	  : 215,
	Timer	  : 30,
	DelayTime : 4000,
	WaitTime  : 3,
	ScrollStep: 3,
	SwitchType: 1,
	AutoStart : 1
})
</script>
          </div>
        </div>
      </div>
      <div class="ri215"> <img src="images/link.jpg" border="0" usemap="#Map" />
        <map name="Map" id="Map">
          <area shape="rect" coords="10,4,198,54" href="#" />
          <area shape="rect" coords="13,73,205,130" href="#" />
          <area shape="rect" coords="14,160,206,224" href="#" />
        </map>
      </div>
    </div>
  </div> --%>
  <!--百信资讯 E-->
  
</div>

<!--主体 E-->
<div style="width:1252px;margin:20px auto;height:200px;background:#f0f0f0">
	<div style="width:25%;height:200px;padding-top:2px;float:left;">
		<div  style="" class="footer1">
			<img src="images/12301.JPG">
		</div>
	</div>
	<div style="width:25%;height:200px;padding-top:2px;float:left;">
		<div  style="" class="footer1">
			<img src="images/12302.JPG">
		</div>
	</div>
	<div style="width:25%;height:200px;padding-top:2px;float:left;">
		<div  style="" class="footer1">
			<img src="images/12303.JPG">
		</div>
	</div>
	<div style="width:25%;height:200px;padding-top:2px;float:left;">
		<div  style="" class="footer1">
			<img src="images/12304.JPG">
		</div>
	</div>
	
</div>
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
          <dt>关于信药</dt>
          <dd><a href="#">我们的团队</a></dd>
          <dd><a href="#">帮助中心</a></dd>
          <dd><a href="#">网站地图</a></dd>
          <dd><a href="#">版权说明</a></dd>
        </dl>
      </div>
      
  </dl>
</div>
<div class="copy">    山财信药药业有限公司  备05022371  </div>
<!--底部结束-->
<div id="elevator_item"> <a id="elevator" onclick="return false;" title="回到顶部"></a> <a class="qq"></a> <a class="buy"></a> <a class="wx"></a>
  <div class="qq-popup"> <a class="code-link"><img class="code" src="images/qq.jpg"/></a> <span>加qq好友</span> </div>
  <div class="buy-popup"> <a class="code-link"><img class="code" src="images/buy.jpg"/></a> <span>购物车</span> </div>
  <div class="wx-popup"> <a class="code-link"><img class="code" src="images/wxx.jpg"/></a> <span>加微信好友</span> </div>
</div>
<script type="text/javascript">
$(function() {
	$(window).scroll(function(){
		var scrolltop=$(this).scrollTop();		
		if(scrolltop>=200){		
			$("#elevator_item").show();
		}else{
			$("#elevator_item").hide();
		}
	});		
	$("#elevator").click(function(){
		$("html,body").animate({scrollTop: 0}, 500);	
	});		
	$(".qq").hover(function(){
		$(".qq-popup").show();
	},function(){
		$(".qq-popup").hide();
	});	
	$(".buy").hover(function(){
		$(".buy-popup").show();
	},function(){
		$(".buy-popup").hide();
	});	
	$(".wx").hover(function(){
		$(".wx-popup").show();
	},function(){
		$(".wx-popup").hide();
	});	
});
</script>
<!-- <div id="AdLayer" style="display:none;">
  <div class="qqnav">
    <div class="close"><a  href="javascript:(0);"  onclick="document.getElementById('AdLayer').style.display='none';"></a></div>
 <ul><li> <img src="images/wxx.jpg" border="0" usemap="#Map2" />
<map name="Map2" id="Map2"><area shape="rect" coords="5,7,54,53" href="#" /><area shape="rect" coords="5,70,53,113" href="#" /><area shape="rect" coords="6,125,52,166" href="#" /></map></li></ul>
  </div>
</div>
<script>
(function(){
	var n=1;
	var obj=document.getElementById("AdLayer");
	if(!obj){return false;}
	var x=0;
	var fe=$("#AdLayer");
	window.onscroll=function(){
		obj.style.top=(document.body.scrollTop||document.documentElement.scrollTop)+n+'px';
		x=(document.body.scrollTop||document.documentElement.scrollTop)+n;
		if(x==0){fe.fadeOut().hide()}else{fe.fadeIn().show()};
	};
	window.onresize=function(){obj.style.top=(document.body.scrollTop||document.documentElement.scrollTop)+n+'px'};
})();
</script>-->
  <div>
    <a href="User/User-registerInput">注册</a>
    <a href="User/User-loginInput">登陆</a>
    <a
		href="
    <%try {
				if (session.getAttribute("id") == null)
					out.write("User/User-loginInput");
				else
					out.write("User/User-reviseInput");
			} catch (NullPointerException e) {
				;
			}%>

    ">修改信息</a>
    <a href="User/User-destroy">注销</a>
   
    <a href="User/User-index">用户信息</a>
    
    <a href="Admin/Admin-loginInput">系统管理员登陆</a>
    <br/><br/><br/><br/>
    
    <a href="Index/Index-druglist">药品列表</a>
    </div>
  </body>
</html>
     	