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
	
	<link rel="stylesheet" type="text/css" href="CSS/CRM.css">
	
    <script type="text/javascript">
    </script>
  </head>
  <body>
    <center>
        <form action="index!sousuo.action" method="post">
            <select id="table" name="table" onchange="change(this)">
                 <option>请选择</option>
                <option value="1">客户</option>
                <option value="2">客户沟通记录</option>
                <option value="3">产品</option>
                <option value="4">供应商</option>
                <option value="5">销售记录</option>
                <option value="6">销售明细</option>
            </select><p>
            <input type="text" name="key" size="60"><input type="submit" value="搜索">
            <div id="sousuo_buttom">
            <p><a href="index!text.action">搜索技巧</a>|<a href="index!sousuobar.action">高级搜索</a>
            </div>
        </form>
    </center>
  </body>
</html>
