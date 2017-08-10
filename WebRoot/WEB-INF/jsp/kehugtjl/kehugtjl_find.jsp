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
    
    <title>查找记录</title>
    
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
    搜索《客户记录》
   <hr>
   <form action="kehugtjl!find.action" method="post">
    选择客户名称：<select name="kehuId">
     <option value="-1">选择</option>
   <c:forEach var="kehu" items="${requestScope.kehus }">
   <option value="${kehu.kehuId }">${kehu.kehuName }</option>
   </c:forEach>
   </select>
   记录类别：<input type="text" name="jllb">
   <input type="submit" value="开始搜索">
   </form>
  </body>
</html>
