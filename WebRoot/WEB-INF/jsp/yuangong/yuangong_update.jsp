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
    
    <title>员工信息修改</title>
    
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
  <h3>员工信息修改》》</h3>
    <center>
         <form action="yuangong!update.action">
         <input type="hidden" name="ygId" value="${requestScope.yuangongs.ygId }">
         <table  style="font-size: 20px;">
            <tr><td>员工姓名：</td><td><input type="text"name="ygName" value="${requestScope.yuangongs.ygName }"></td></tr>
            <tr><td>部门名：</td><td><input type="text"name="bumenId" value="${requestScope.yuangongs.bumen.bumenId}"></td></tr>
            <tr><td>电话：</td><td><input type="text" name="ygDianhua" value="${requestScope.yuangongs.ygDianhua}"></td></tr>
            <tr><td>地址：</td><td><input type="text" name="ygDizhi" value="${requestScope.yuangongs.ygDizhi}"></td></tr>
            <tr><td>邮编：</td><td><input type="text" name="youbian" value="${requestScope.yuangongs.youbian }"></td></tr>
            <tr><td>问题：</td><td><input type="text" name="wenti" value="${requestScope.yuangongs.wenti}"></td></tr>
            <tr><td>答案：</td><td><input type="text" name="daan" value="${requestScope.yuangongs.daan}"></td></tr>
            <tr align="center"><td colspan="2"><input type="submit" value="修改" ><input type="reset" value="取消"></td></tr>
       </table>
      
         </form>
    </center>
  </body>
</html>
