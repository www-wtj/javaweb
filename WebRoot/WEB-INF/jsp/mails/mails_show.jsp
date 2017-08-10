<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>邮件</title>
    
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
    <center>
   <h2>
     收件箱<a href="mails!num.action?back=${requestScope.back }">${requestScope.num }</a><p>
     未读邮件<a href="mails!weidu.action?back=${requestScope.back }">${requestScope.weidu}</a><p>
     已发送<a href="mails!fasong.action?ygId=${sessionScope.id}">${requestScope.fasong}</a>
     </h2>
    </center>
  </body>
</html>
