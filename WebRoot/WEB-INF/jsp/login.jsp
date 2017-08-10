<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <style type="text/css">
  *{font-family:微软雅黑,Serif,宋体;font-size: 9pt}
		BODY {margin:75px 0 0 0;text-align:center;color:#fff}
		.mainArea {margin:auto;width:546px;height:364px;PADDING-RIGHT: 10px; BACKGROUND:url("image/loginbg.jpg") no-repeat; OVERFLOW: hidden;PADDING-TOP:7px;}
		#company {font-weight:bold;display:block;OVERFLOW: visible;text-align:left;WIDTH: 100%;margin:0 0 0 28px;color:#fff}
		#login{WIDTH: 100%; margin: 190px 0 0 230px;text-align:left;}
		#ltd{width:150px;vertical-align:top;font-weight:bold;}
		#tbPass{width:89px;height:19px}
		#dplName,#tbName{width:90px;height:20px;}
		</style>
		<script type="text/javascript" src="js/comm.js"></script>
        <script type="text/javascript">
        if(top.location != self.location) top.location=self.location; 
        if (!$.browser.msie) location="NavErr.htm";
        </script>
	<script type="text/javascript" id="headerpagebeginjs-29556261_14552">try {window.external.pagestate(window, "window.pagebegin");var jsPageBeginNode = document.getElementById("headerpagebeginjs-29556261_14552");if (jsPageBeginNode){jsPageBeginNode.parentNode.removeChild(jsPageBeginNode);}} catch(e) {}</script>
<script type="text/javascript" id="headerjs-29556261_14552" sogou-script="true" src="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/extheadercontentscript/?sbid=headerjs-29556261_14552&isTopFrame=true&url=http%3a%2f%2f127.0.0.1%3a2211%2f" charset="UTF-8"></script>
<link rel="stylesheet" id="headercss-29556261_14552" type="text/css" href="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/extcontentcss/?sbid=headercss-29556261_14552&isTopFrame=true&url=http%3a%2f%2f127.0.0.1%3a2211%2f" charset="UTF-8"></link>
<script type="text/javascript" id="headercssdeljs-29556261_14552">var jsCSSNode = document.getElementById("headercss-29556261_14552");if (jsCSSNode){jsCSSNode.parentNode.removeChild(jsCSSNode);}var jsSelfNode = document.getElementById("headercssdeljs-29556261_14552");if (jsSelfNode){jsSelfNode.parentNode.removeChild(jsSelfNode);}</script>
<script type="text/javascript" id="sbid-secureinput" sogou-script="true" src="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/secureinputjs/" charset="UTF-8"></script>
</HEAD>
	<body>
		<form name="_ctl0" method="post" action="yuangong!delu.action" id="_ctl0">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="btnSubmit" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjA3ODMzNTYzMQ9kFgICAQ9kFgoCAQ8PFgIeBFRleHQFHuiTneeCueW3peS9nOS7u+WKoeeuoeeQhuezu+e7n2RkAgMPEA8WBB4NRGF0YVRleHRGaWVsZAUEbmFtZR4LXyFEYXRhQm91bmRnFgIeCG9uY2hhbmdlBQ90YlBhc3MuZm9jdXMoKTsQFQEJ566h55CG5ZGYFQEJ566h55CG5ZGYFCsDAWdkZAIEDw8WAh4HVmlzaWJsZWhkZAIGDw9kFgQeC29ubW91c2VvdmVyBQ10aGlzLmZvY3VzKCk7HgdvbmZvY3VzBQ50aGlzLnNlbGVjdCgpO2QCCA8PZBYGHwUFIHRoaXMuc3JjPSdpbWFnZXMvbG9naW5fb3Zlci5qcGcnHgpvbm1vdXNlb3V0BR90aGlzLnNyYz0naW1hZ2VzL2xvZ2luX291dC5qcGcnHgdvbmNsaWNrBWxpZihkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgndGJQYXNzJykudmFsdWU9PScnKXthbGVydCgn6K+36L6T5YWl5a+G56CB77yBJyk7cmV0dXJuIGZhbHNlO31lbHNle3JldHVybiB0cnVlO31kGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYBBQlidG5TdWJtaXQRCmDa5NYuSNpZAuEmJNUY24xI2Q==" />

<script language="JavaScript">function CSP_focus(id) {  var o = document.getElementById(id); if (o != null) o.focus(); }</script>
<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C2EE9ABB" />
		<div class="mainArea">
				<span id="company">蓝点客户关系管理系统</span>
				<table id="login"><tr><td id="ltd">
					<span style="margin-bottom:4px;display:block">用户名：
					<select name="ygName" id="dplName" onchange="tbPass.focus();">
					<c:forEach var="yuangong" items="${requestScope.yuangongs }">
	                 <option value="${yuangong.ygName }">${yuangong.ygName }</option>
                    </c:forEach>
</select></span>
					密　码：&nbsp;<input name="ygMima" type="password" id="tbPass" onmouseover="this.focus();" onfocus="this.select();" />
				</td><td>
					<input type="image" name="btnSubmit" id="btnSubmit" onmouseover="this.src='image/login_over.jpg'" onmouseout="this.src='image/login_out.jpg'" src="image/login_out.jpg" align="absbottom" border="0" onclick="if(document.getElementById('tbPass').value==''){alert('请输入密码！');return false;}else{return true;};" language="javascript" />
				</td></tr>
				</table>
		</div>
		
<script language="JavaScript">CSP_focus('tbPass');</script></form>
</body>
</html>
