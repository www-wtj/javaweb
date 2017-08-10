<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  id="topbar">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topbar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="App_Themes/Default/base.css" type="text/css" rel="stylesheet" />
	</head>
   <body  id="bd">
<form name="form1" method="post" action="topbar.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJLTI3MTgyNzg5D2QWAgIDD2QWAgIBD2QWCgICDxYCHglpbm5lcmh0bWwFFzxkaXY+PC9kaXY+5L+h5oGv5Lit5b+DZAIDDxYCHwAFFzxkaXY+PC9kaXY+5pWw5o2u5Lit5b+DZAIHDxYCHwAFS8K3PGEgaHJlZj0naHR0cDovL2xhbmRpYW4uY2MnIHRhcmdldD0nX2JsYW5rJyc+6JOd54K5566h55CG6L2v5Lu2PC9hPjxiciAvPmQCCQ9kFgJmD2QWAgIBD2QWAmYPZBYCZg8PZBYCHgZ0YXJnZXQFBV9zZWxmZAIKDxYCHgdWaXNpYmxlaGQYAQUCbHYPD2QCAWR7fIO8NOBIxuU4AGsMQ3OgW7m2Xg==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=5K_A41EIPlW3vzL7HWoahliRe_towgabDniZ2loKQQTmZR3CGRG4FwXAIIJ-KZ1oFk6cduKpmOhVp4TP-y5HCGY3Bc81&amp;t=635295382417495136" type="text/javascript"></script>


<script src="js/MsAjax.js" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8CED90E4" />
</div>
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('sm', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tupLogout'], [], [], 90);
//]]>
</script>

        <div id="main">
            <img src="images/logo.gif" id="icon" />
            <div id="logoText">
                 <div id="orgName">蓝点</div>
                <div id="sysName">客户关系管理系统</div>
            </div>
            <div id="home" class="nav" onclick="toLoad('home.aspx');"><div></div><a href="index!home.action" target="mainFrame" >首 页</a></div>
            <div class="sep"  id="sepInfo"></div>
            <div id="info"  class="nav" onclick="toLoad('infoList.aspx');"><div></div><a href="mails!show.action?ygId=${sessionScope.id }" target="mainFrame" >信息中心</a></div>
            <div class="sep"></div>
            <div id="data" class="nav" onclick="toLoad('templets.aspx?mode=DataAdmin');"><div></div><a href="index!numbar.action" target="mainFrame" >数据中心</a></div>
            <div class="sep"></div>
            <div id="search" class="nav" onclick="toLoad('dataHome.aspx');"><div></div><a href="index!forsousuo.action" target="mainFrame" >搜 索</a></div>
            <div class="sep"  id="sepAdmin"></div>
            <div id="admin"  class="nav" onclick="toLoad('adminHome.aspx');"><div></div><a href="yuangong!quanxian.action?ygId=${sessionScope.id }" target="mainFrame" >系统管理</a></div>
            <div class="sep"></div>
            <div id="help" class="nav" onclick="showHelp('index');"><div></div><a href="" target="mainFrame" >帮助</a></div>
        </div>
        <div id="tools" >
        <c:if test="${sessionScope.yuangonges.quanxian.qxId==3 }">
            <a href="affiche!foradd.action" target="mainFrame">
            <img src="images/home.gif" alt="发布公告" title="发布公告" onclick="sethome();"width="40px" height="40px" />
            </a>
           </c:if>
        </div>
        <div id="links" ></div>
        <div id="sepLine"></div>
        <div id="bar">
            <div id="loginview">
            <img src="images/l.gif" title="隐藏侧栏"  id="lr" onclick="leftright();"  />
             <span id="upLogout">
                     
                    <a href="yuangong!show.action?ygName=${sessionScope.sys }&ygId=${sessionScope.id }" target="mainFrame">${sessionScope.id }:${sessionScope.sys }</a> - <a id="lv_lbExit" title="退出登录状态" target="_self" href="yuangong.action">注销</a>
                    
            </span>

            </div>
            <img src="images/u.gif" title="隐藏顶栏" id="tb" onclick="updown();" />
            <div id="boderline"></div>
        </div>
    </form>
    <script src="js/comm.js" type="text/ecmascript"></script>
    <script src="js/topbar.js" type="text/ecmascript"></script>
</body>
</html>
