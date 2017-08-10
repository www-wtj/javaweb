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
    
    <title>详细记录</title>
    
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
    显示《客户沟通记录》
   <hr>
      <form action="kehugtjl!add.action" method="post">
        客户名称：<input type="text" name="kehuId" value="${requestScope.kehugtjls.kehu.kehuName }"><hr>
       沟通方式：<input type="text" name="gtfs" value="${requestScope.kehugtjls.gtfs }"><hr>
        沟通主题：<input type="text" name="zhuti" value="${requestScope.kehugtjls.zhuti }"><hr>
        记录类别：<input type="text" name="jllb" value="${requestScope.kehugtjls.jllb }"><hr>
        沟通情况记录：<script type="text/plain" id="editor" name="gtjilu" style="width:100%;height:300px;">${requestScope.kehugtjls.gtjilu }</script>
	           <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
               <script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script>
              <hr> 
              处理结果记录：<script type="text/plain" id="editor1" name="jgjilu" style="width:100%;height:300px;">${requestScope.kehugtjls.jgjilu }</script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor1');
              </script>
              <hr> 
                   
      </form>
    
  </body>
</html>
