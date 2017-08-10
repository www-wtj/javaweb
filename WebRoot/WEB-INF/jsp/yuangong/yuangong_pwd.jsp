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
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <script type="text/javascript">
    function check(){
    var pwd=document.getElementById("ygMima").value;
    var pwd1=document.getElementById("mima").value;
    if(pwd!=pwd1){
      alert("两次输入的密码不一致，请从新输入！");
      document.getElementById("ygMima").focus;
      return false;
      }
      
      return true;
      
    }
   
   </script>
  </head>
  
  <body >
    <center>
        <form action="yuangong!mima.action" method="post" onsubmit="return check()">
        <input type="hidden" name="ygId" value="${sessionScope.id }">
        输入新密码：&nbsp;&nbsp;<input type="password" name="ygMima" id="ygMima" ><p>
        再次输入密码：<input type="password" name="mima" id="mima"><P>
        <input type="submit" value="修改"><input type="reset" value="取消">
        </form>
    </center>
  </body>
</html>
