<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布公告</title>
    
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
   发布公告》》<hr>
   <form action="affiche!add.action" method="post" enctype="multipart/form-data">
      <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
      <script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
       公告内容：<script type="text/plain" id="editor" name="editor" style="width:100%;height:300px;"></script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script>
              添加照片：<input type="file" name="upload">
              <input type="submit" value="发布">
   </form> 
  </body>
</html>
