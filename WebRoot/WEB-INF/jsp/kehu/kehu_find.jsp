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
    
    <title>搜索</title>
    
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
    搜索《客户》
   <hr>
   <form action="kehu!find.action" method="post">
   输入客户名称：<input type="text" name="kehuName">
   输入客户类别：<select name="khlbId">
   <c:forEach var="khlb" items="${requestScope.khlb }">
   <option value="${khlb.khlbId }">${khlb.klhlbName }</option>
   </c:forEach>
   </select>
   <input type="submit" value="开始搜索">
   </form>
  </body>
</html>
