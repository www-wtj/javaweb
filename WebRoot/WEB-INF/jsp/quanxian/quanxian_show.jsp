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
    
    <title>My JSP 'quanxian_show.jsp' starting page</title>
    
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
    《${requestScope.yuangongs.ygName }》
             属于:${requestScope.yuangongs.quanxian.qxName }》》为<font color="red">${requestScope.yuangongs.quanxian.qxId }</font>权限
  <c:if test="${sessionScope.yuangonges.quanxian.qxId==3 }"> -----------------<a href=" yuangong!quanxianUpdate.action">修改权限</a>
  </c:if><hr><center>权限列表
  <table border="1" width="400px" height="60px">
  <tr bgcolor="red" align="center"><td>权限名</td><td>权限等级</td></tr>
  <c:forEach var="quanxian" items="${requestScope.quanxians }">
  <tr bgcolor="green" align="center"><td>${quanxian.qxName }</td><td>${quanxian.qxNum }</td></tr>
  </c:forEach>
  </table>
  </center>
  </body>
</html>
