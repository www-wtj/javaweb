<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>蓝点客户关系管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
  </head>
   <frameset id="tb" rows="100,*" frameborder="0" framespacing="0" cols="*">
  <frame src="index!topbar.action" scrolling="no" noresize="noresize" id="topFrame" name="topFrame" />
  <frameset id="lr" cols="258,*">
    <frame src="index!sidebar.action" id="leftFrame" noresize="noresize" name="leftFrame" />
    <frame id="mainFrame" src="index!home.action" name="mainFrame"></frame>
  </frameset>
</frameset>
  
  <body>
  
  </body>
</html>
