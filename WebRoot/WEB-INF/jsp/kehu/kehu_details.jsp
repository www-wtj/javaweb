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
    
    <title>客户信息</title>
    
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
    显示《客户》
   <hr>
      <form action="kehu!add.action" method="post">
        客户名称：<input type="text" name="kehuName" value="${requestScope.kh.kehuName }"><hr>
        客户类别： <input type="text" name="khlbId" value="${requestScope.kh.khlb.klhlbName }"><hr>
        客户地址：<input type="text" name="kehuDizhi" value="${requestScope.kh.kehuDizhi }"><hr>
        地区： <input type="text" name="diquId" value="${requestScope.kh.diqu.diquName}"><hr>
        客户网站：<input type="text" name="kehuWangzhan" value="${requestScope.kh.kehuWangzhan }"><hr>
        客户电话：<input type="text" name="kehuDianhua" value="${requestScope.kh.kehuDianhua }"><hr> 
        联系人：<input type="text" name="kehuLianxiren" value="${requestScope.kh.kehuLianxiren }"><hr>
         业务员：<input type="text" name="kehuLianxiren" value="${requestScope.kh.yuangong.ygName}"><hr>
        业务：<script type="text/plain" id="editor" name="yewu" style="width:100%;height:600px;">${requestScope.kh.yewu}</script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script>
              <hr>     
      </form>
    
  </body>
</html>
