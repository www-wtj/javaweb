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
    
    <title>发送邮件</title>
    
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
   <script type="text/javascript">
   function change(all){
      
      var youxiang=all.value;
      var back=document.getElementById("back").value;
      if(back==""){
         back=youxiang;
      }
      else{
         back=back+";"+youxiang;
      }
       document.getElementById("back").value=back;
       
      }
   </script>
   
   
  </head>
  
  <body>
    <center>
       <form action="mails!add.action" method="post">
       <input type="hidden" name="ygId" value=${sessionScope.id }>
           <table>
               <tr><td>邮箱：</td><td><input type="text" name="back" id="back" size="80">
               <select name="youxiang" id="youxiang" onchange="change(this)">
                 <option>请选择</option>
                  <c:forEach var="yg" items="${requestScope.yuangongs }">
                  <option value="${yg.youxiang }"  >${yg.ygName}</option>
                  </c:forEach>
               </select>
               </td></tr>
               <tr><td>主题：</td><td><input type="text" name="subject"size="80"></td></tr>
               <tr><td>内容：</td><td></td></tr>
               <tr><td colspan="2"> <script type="text/plain" id="editor" name="details" style="width:100%;height:600px;"></script>
	            <script type="text/javascript">
       //实例化编辑器
                    var editor = UE.getEditor('editor');
              </script></td></tr>
             
           </table>
           <input type="submit" value="发送"><input type="reset" value="取消">
       </form>
    </center>
  </body>
</html>
