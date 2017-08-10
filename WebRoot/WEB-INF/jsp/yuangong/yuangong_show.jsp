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
    
    <title>员工信息显示</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="CSS/CRM.css">
	

  </head>
  
  <body>
  <h3>员工信息显示》》</h3>
    <div id="yg_show">
    
    <center>
         <form action="">
        
         <table  style="font-size: 20px;">
            <tr><td>员工姓名：</td><td><input type="text" value="${requestScope.yuangongs.ygName }"></td></tr>
            <tr><td>部门名：</td><td><input type="text" value="${requestScope.yuangongs.bumen.bumenName}"></td></tr>
            <tr><td>电话：</td><td><input type="text" value="${requestScope.yuangongs.ygDianhua}"></td></tr>
            <tr><td>地址：</td><td><input type="text" value="${requestScope.yuangongs.ygDizhi}"></td></tr>
            <tr><td>邮编：</td><td><input type="text" value="${requestScope.yuangongs.youbian }"></td></tr>
            <tr><td>问题：</td><td><input type="text" value="${requestScope.yuangongs.wenti}"></td></tr>
            <tr><td>答案：</td><td><input type="text" value="${requestScope.yuangongs.daan}"></td></tr>
            
       </table>
      
         </form>
    </center>
    </div>
  </body>
</html>
