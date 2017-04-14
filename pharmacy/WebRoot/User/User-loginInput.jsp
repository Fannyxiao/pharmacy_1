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

<title>My JSP 'User-loginInput.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		a:link { color:#aaa;text-decoration:none; } 
		a:visited { color:#aaa;text-decoration:none; } 
		a:hover { color:#6495ed; text-decoration:none; } 
		a:active { color:#aaa; text-decoration:none; }
		.box-shadow{-webkit-box-shadow:inset 0 0 10px #0CC;-moz-box-shadow:inset 0 0 5px #ccc; box-shadow:inset 0 0 10px #ccc;  }  
		.denglu{width:80%;height:350px;border-top:3px solid #b0e0e6;margin: 0 auto;}
		.top{width: 80%;height: 100px;margin: 20px auto;}
		.main-left{width:55%;height: 350px;float: left;}
		.main-right{width: 40%;height: 350px;margin: 0 auto;float:right;}
		.hi{width: 40%;height: 40px; margin-top: 50px;margin-left: 30px;font-size: 19px; font-family: "YouYuan";color: #666666;float: left;}
		span{padding-left: 20px;}
		#fome1{width: 70%;margin: 0 auto;}
		.fome11{height: 30px;border-top: #FFFFFF;border-left:#FFFFFF;border-right: #FFFFFF; outline:none;width: 100%;}
		#fome2{ width: 70%;margin: 0 auto;}
		.fome22{height: 30px;border-top: #FFFFFF;border-left:#FFFFFF;border-right: #FFFFFF; outline:none;width: 100%;margin-top: 30px;}
		.submit{float: left;margin-left:100px;margin-top: 30px;}
		.button {display: inline-block;
				outline: none;cursor: pointer;
				 text-align: center;
				 text-decoration: none;
				 font: 17px/100% Arial, Helvetica, sans-serif;
				 padding: .5em 2em .55em;
				 text-shadow: 0 1px 1px rgba(0,0,0,.3);
				 -webkit-border-radius: .2em; 
				 -moz-border-radius: .2em;
				 border-radius: .2em;
				 -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
				 -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
				 box-shadow: 0 1px 2px rgba(0,0,0,.2);}
		.button:hover {text-decoration: none;}
		.button:active {position: relative;top: 1px;}
		.blue {
		  color:#0000CD;
		  border: solid 1px #6495ED ;
		  background: #ADD8E6  ;
		  background: -webkit-gradient(linear, left top, left bottom, from(#4169E1), to(#6495ED));
		  background: -moz-linear-gradient(top,  #4169E1,  #6495ED );
		  
		}
		.blue:hover {
		  background: #f47c20;
		  background: -webkit-gradient(linear, left top, left bottom, from(#4169E1), to(#1E90FF));
		  background: -moz-linear-gradient(top,  #4169E1,  #1E90FF);
		  
		}
		.blue:active {
		  color: #fcd3a5;
		  background: -webkit-gradient(linear, left top, left bottom, from(#6495ED ), to(#00BFFF ));
		  background: -moz-linear-gradient(top,  #6495ED ,  #00BFFF );
		}
		.alink{font-size: 12px;width: 40%;height: 40px;float: right;color: #aaa;margin-top: 50px;}
		.forget{height: 20px;width: 60px;float: right;font-size: 12px;margin-right: 60px;margin-top: 20px;}
		.check{height: 20px;width: 100px;float:left;font-size: 13px;margin-top: 20px;margin-left: 60px;color: #aaa;}
		.down1{margin: 0 auto;height: 20px;width: 80%;text-align: center;font-size: 12px;padding-top: 5px;color: #aaa;}
		.down{margin:30px auto;height: 80px;width: 80%;}

		
	</style>
</head>

<body>

<div class="top"><img src="images/yao_logo.jpg"></div>
	<div class="denglu box-shadow">
		
		<div class="main-left"><img src="images/bg1.jpg" style="width:100%;height:100%"></div>
		<div class="main-right">

		   	    <div class="hi"><span>Hi!欢迎登录</span></div>
				<div class="alink">还不是信药网会员？<a href="User/User-registerInput">免费注册</a></div>
				<form action="User/User-login" method="post">
			   	<div id ="fome1">
				<input class="fome11" name="user.username" type="text" value="请输入用户名/手机号/邮箱" style="color:#888888;" 
				onfocus="javascript:this.style.color='#000000';if(this.value=='请输入用户名/手机号/邮箱')this.value='';" 
				onblur="javascript:if(this.value==''){this.value='请输入用户名/手机号/邮箱';this.style.color='#888888';}" />
			    </div>

				<div id="fome2">
				<input class="fome22" name="user.password" type="text"value="请输入密码"  style="color:#888888;" 
				onfocus="javascript:this.style.color='#000000';if(this.value=='请输入密码')this.value='';" 
				onblur="javascript:if(this.value==''){this.value='请输入密码';this.style.color='#888888';}" />
				</div>
				
				<div class="forget"><a href="#" target="_blank">忘记密码？</a></div>
				<div class="check"><input type="checkbox"/>两周内免登录</div>




			   <div class ="submit">
			    <a href="#" class="button blue" style="font-family: 'Microsoft Yahei' ;display:none;font-size: '15px';color: #F0F8FF;width: 130px;height: 20px;">登 陆</a>
			 	<input type="submit" class="button blue" style="font-family: 'Microsoft Yahei' ;font-size: '15px';color: #F0F8FF;width: 130px;height: 40px;" value="登陆">
			   </div>
			   </form>
		</div>
	</div>
	<div class="down">
		<div class="down1"><a href="" target="_blank">关于信药网</a>| <a href="" target="_blank">互联网药品交易资格证</a>| <a href="" target="_blank">互联网药品信息服务资格证</a>|</div>
		<div class="down1"><a href="" target="_blank">连锁营业执照</a>| <a href="" target="_blank">保健食品卫生许可证</a>| <a href="" target="_blank">医疗器械许可证</a>| <a href="" target="_blank">食品流通许可证</a>| <a href="" target="_blank">GSP证书</a>| <a href="" target="_blank">粤ICP备12015869号</a>|</div>
		<div class="down1">Copyright© 信药网 2010-2015， All Rights Reserved</div>
	</div>
	
	
	<div style="display:none;">
		<div>
			<div>
				<img src=""><span></span>
			</div>
			<form action="User/User-login" method="post">
				<div>
					<input type="text" name="user.username" value="请输入用户名"
						onfocus="javascript:this.style.color='#000000';if(this.value=='请输入用户名')this.value='';"
						onblur="javascript:if(this.value==''){this.value='请输入用户名';this.style.color='#888888';}" />
				</div>
				<div>
					<input type="password" name="user.password" value="请输入密码"
						onfocus="javascript:this.style.color='#000000';if(this.value=='请输入密码')this.value='';"
						onblur="javascript:if(this.value==''){this.value='请输入密码';this.style.color='#888888';}" />
				</div>
				<div class="submit">
					<input type="submit" value="登陆">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
