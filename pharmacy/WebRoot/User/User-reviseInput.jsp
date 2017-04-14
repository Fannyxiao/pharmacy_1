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

<title>My JSP 'User-reviseInput.jsp' starting page</title>

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
	<div>

		<div>

			<div>
				<s:if test="%{#session.image != null}">
					<img src="upload/<%=session.getAttribute("image")%>"
						style="width: 50px;height: 50px; border-radius:25px; vertical-align: middle;" />
				</s:if>
				<span>完善我的小尾巴狼</span>
			</div>
			<form action="User/User-revise" method="post"
				enctype="multipart/form-data">
				<input type="text" value="<%=session.getAttribute("id")%>"
					name="user.id" style="display:none;">
				<div>

					手机号：<input type="text" name="user.phone"
						value="<%=session.getAttribute("phone")%>">

				</div>
				<div class="xiugai">
					邮箱：&nbsp;<input type="text" name="user.email"
						value="<%try {
				if (session.getAttribute("email").equals(null))
					out.write("");
				else
					out.write(session.getAttribute("email").toString());
			} catch (NullPointerException e) {
			}%>">
				</div>


				<div>
					年龄：&nbsp;<input type="number" name="user.age"
						value="<%try {
				if (session.getAttribute("age").equals(null))
					;
				else
					out.write(session.getAttribute("age").toString());
			} catch (NullPointerException e) {
			}%>">


				</div>
				<div class="xiugai">
					性别：&nbsp;<input type="text" name="user.sex"
						value="<%try {
				if (session.getAttribute("sex").equals(null))
					out.write("男/女");
				else
					out.write(session.getAttribute("sex").toString());
			} catch (NullPointerException e) {
				out.write("男/女");
			}%>">
				</div>
				<div class="xiugai">
					<input type="file" name="headImg">
				</div>
				<div class="submit">
					<input type="submit" value="更新" class="button blue">

				</div>
			</form>
		</div>

	</div>
</body>
</html>
