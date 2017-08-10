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
    
    <title>客户沟通记录</title>
    
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
    <table border="1" cellspacing="0">
       <tr><td>客户</td><td>沟通方式名称</td><td>主题</td><td>记录类别</td><td>时间</td></tr>
       <c:forEach var="gtjl" items="${requestScope.kehugtjls }">
       <tr><td><a href="kehugtjl!details.action?gtjlId=${gtjl.gtjlId }">${gtjl.kehu.kehuName }</a></td>
       <td>${gtjl.gtfs }</td>
       <td>${gtjl.zhuti }</td>
       <td>${gtjl.jllb }</td>
       <td>${gtjl.shijian }</td></tr>
       </c:forEach>
    </table>
  </body>
</html>
