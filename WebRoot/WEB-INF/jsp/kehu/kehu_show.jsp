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
    
    <title>客户显示</title>
    
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
显示《客户》
<form>
      <table border="1">
         <tr><td>客户名称</td><td>客户类别</td><td>客户地址</td><td>地区</td><td>客户网站</td><td>客户电话</td><td>联系人</td><td>业务员</td></tr>
         <c:forEach var="kehu" items="${requestScope.kehus }">
         <tr><td><a href="kehu!details.action?kehuId=${kehu.kehuId }">${kehu.kehuName }</a></td>
         <td><input type="text" name="khlbId" value="${kehu.khlb.klhlbName }"></td>
         <td><input type="text" name="kehuDizhi" value="${kehu.kehuDizhi }"></td>
         <td><input type="text" name="diquId" value="${kehu.diqu.diquName }"></td>
         <td><input type="text" name="kehuWangzhan" value="${kehu.kehuWangzhan }"></td>
         <td><input type="text" name="kehuDianhua" value="${kehu.kehuDianhua }"></td>
         <td><input type="text" name="kehuLianxiren" value="${kehu.kehuLianxiren }"></td>
         <td><input type="text" name="ygId" value="${kehu.yuangong.ygName }"></td></tr>
         
         </c:forEach>
      </table>
    </form>
  </body>
</html>
