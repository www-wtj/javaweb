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
    
    <title>未读邮件</title>
    
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
     <h3>未读邮件</h3>
   <form>
     <table>
       <tr><td>标题</td><td>发件人邮箱</td><td>发件时间</td><td>删除</td></tr>
       <c:forEach var="mails" items="${requestScope.mailes }">
           <tr><td><a href="mails!details.action?mailsId=${mails.mailsId }&state=${mails.state }">${mails.subject }</a></td>
           <td>${mails.back }</td>
           <td>${mails.maildate }</td>
           <td><a href="">删除</a></td></tr>
       </c:forEach>
     </table>
   </form>
   </center>
  </body>
</html>
