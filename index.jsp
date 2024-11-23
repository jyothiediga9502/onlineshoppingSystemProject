<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
  </head>
  
  <body><center>
  <a href="/JSPProject/User.html" style="font-size:50px;background:#ff00ff "> userRegistration</a><br/><br/>
  <a href="/JSPProject/Product.html" style="font-size:50px ;background:#ffff00 "> ProductRegistration</a><br/><br/>
  <a href="/JSPProject/admin.html" style="font-size:50px ;background:orange"> Admin Registration</a><br/><br/>
  <a href="/JSPProject/Login.html" style="font-size:50px ;background:cyan "> Login</a><br/><br/>
  <a href="/JSPProject/userLogin.html" style="font-size:50px ;background:#f00f00 "> User Login</a><br/><br/>
  <a href="/JSPProject/ServiceLogin.html" style="font-size:50px ;background:#099f00 "> service Login</a><br/><br/>
 </center>
  </body>
</html>
