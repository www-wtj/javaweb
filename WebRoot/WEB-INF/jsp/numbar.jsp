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
    
    <title>数据</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="CSS/CRM.css">
	

  </head>
  
  <body>
  <div id="num_div"><a href="kehu!show.action" ><img src="image/wenjian1.jpg" title="客户信息" width="150px" height="150px"/></a>
  <div id="num_title"><center>客户(${requestScope.kehunum })</center></div>
  </div>
  <div id="num_div"> <a href="kehugtjl!show.action"><img src="image/wenjian1.jpg" title="沟通信息" width="150px" height="150px"/></a>
  <div id="num_title"><center>客户沟通记录(${requestScope.kehugtjlnum })</center></div>
  </div>
  <div id="num_div"> <img src="image/wenjian1.jpg" title="客户信息" width="150px" height="150px"/>
  <div id="num_title"><center>产品()</center></div>
  </div>
  <div id="num_div"> <img src="image/wenjian1.jpg" title="客户信息" width="150px" height="150px"/>
  <div id="num_title"><center>供应商()</center></div>
  </div>
  <div id="num_div"> <img src="image/wenjian1.jpg" title="客户信息" width="150px" height="150px"/>
  <div id="num_title"><center>销售记录()</center></div>
  </div>
  <div id="num_div"> <img src="image/wenjian1.jpg" title="客户信息" width="150px" height="150px"/>
  <div id="num_title"><center>销售明细()</center></div>
  </div>
  </body>
</html>
