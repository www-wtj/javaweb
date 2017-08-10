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
    
    <title>添加客户</title>
    
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
  添加《客户》
   <hr>
      <form action="kehu!add.action" method="post">
        客户名称：<input type="text" name="kehuName"><hr>
        客户类别：<c:forEach var="khlb" items="${requestScope.khlb }">
          ${khlb.klhlbName }<input type="radio" name="khlbId" value="${khlb.khlbId }">
        </c:forEach><hr>
        客户地址：<input type="text" name="kehuDizhi"><hr>
        地区：<select name="diquId">
        <c:forEach var="diqu" items="${requestScope.diqu }">
        <option value="${diqu.diquId }">${diqu.diquName }</option>
        </c:forEach>
        </select><hr>
        客户网站：<input type="text" name="kehuWangzhan"><hr>
        客户电话：<input type="text" name="kehuDianhua"><hr> 
        联系人：<input type="text" name="kehuLianxiren"><hr>
         业务员：<select name="ygId">
         <option>请选择</option>
        <c:forEach var="yg" items="${requestScope.yg }">
        <option value="${yg.ygId }">${yg.ygName }</option>
        </c:forEach>
        </select><hr>
        业务：<script type="text/plain" id="editor" name="yewu" style="width:100%;height:600px;"></script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script>
              <hr> 
              <input type="submit" value="添加"> <input type="reset" value="取消">      
      </form>
    
  </body>
</html>
