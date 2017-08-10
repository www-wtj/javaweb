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
    
    <title>邮件内容</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
   <script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
  </head>
  
  <body>
    <center>
               主题：${requestScope.mailes.subject}<Br>
               内容：<br>
        <script type="text/plain" id="editor" name="details" style="width:100%;height:600px;">${requestScope.mailes.details}</script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script>       
    </center>
  </body>
</html>
