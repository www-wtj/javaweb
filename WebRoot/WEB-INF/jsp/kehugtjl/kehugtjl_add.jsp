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
    
    <title>添加沟通记录</title>
    
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
    添加《客户沟通记录》
   <hr>
      <form action="kehugtjl!add.action" method="post">
        客户名称：<select name="kehuId">
         <option>请选择</option>
        <c:forEach var="kehu" items="${requestScope.kehus }">
        <option value="${kehu.kehuId }">${kehu.kehuName }</option>
        </c:forEach>
        </select><hr>
       沟通方式：<input type="radio" name="gtfs" value="电话">电话
       <input type="radio" name="gtfs" value="邮件">邮件
       <input type="radio" name="gtfs" value="QQ">QQ
       <input type="radio" name="gtfs" value="传真">传真
       <input type="radio" name="gtfs" value="现场交流">现场交流
       <input type="radio" name="gtfs" value="其他">其他<hr>
        沟通主题：<input type="text" name="zhuti"><hr>
        记录类别：<input type="radio" name="jllb" value="客户咨询">客户咨询
       <input type="radio" name="jllb" value="业务联系">业务联系
       <input type="radio" name="jllb" value="售后服务">售后服务
       <input type="radio" name="jllb" value="回访">回访
       <input type="radio" name="jllb" value="客户投诉">客户投诉
       <input type="radio" name="jllb" value="客户建议">客户建议<hr>
        沟通情况记录：<script type="text/plain" id="editor" name="gtjilu" style="width:100%;height:300px;"></script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script>
              <hr> 
              处理结果记录：<script type="text/plain" id="editor1" name="jgjilu" style="width:100%;height:300px;"></script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor1');
              </script>
              <hr> 
              <input type="submit" value="保存"> <input type="reset" value="取消">      
      </form>
    
  </body>
</html>
