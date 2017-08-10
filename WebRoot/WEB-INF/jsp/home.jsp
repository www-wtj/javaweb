<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="home">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="App_Themes/Default/base.css" type="text/css" rel="stylesheet" />
	
	</head>
    <body>
    <form name="form1" method="post" action="home.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
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


<script src="/ScriptResource.axd?d=Q7r-euNXYPNiz9L7P5T5ZaYvodkaVin4-OFxQwn72Jx5228jRRbuctcA-dzYiMQA0Kbe-6zcAok0wVjQlPD-MfqtLgunrAbWqSEn_bfhCFbRiyxoytiS3DrlIYtrEiGgrY5ocwMvqyYSjVahnFpf7bSrseI1&amp;t=635295382417495136" type="text/javascript"></script>
<script src="js/MsAjax.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8D0E13E6" />
</div>
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('s1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tmyTheme$upPop','tpwd$upPop'], ['myTheme$btnOK'], [], 90);
//]]>
</script>

    <div id="fs" class="area">
    <div class="title"><span>☉&nbsp;个人事务</span><div>&nbsp;</div></div>
    <div class="content">
        
        <div id="myinfo" class="item">
            <a href="yuangong!forupdate.action?ygId=${sessionScope.id }"><img src="images/userinfo.png" alt="用户资料维护" /></a><br />
            <a href="yuangong!forupdate.action?ygId=${sessionScope.id }" class="dark">个人资料维护</a>
        </div>
        <div id="sms" class="item">
           
        </div>
        <div id="ChangPwd" class="item">
            <a href="yuangong!formima.action" onclick="ShowPop('pwd_popup',true);"><img src="images/sec.png" alt="修改密码" /></a><br />
            <a href="yuangong!formima.action" onclick="ShowPop('pwd_popup',true);" class="dark">修改密码</a>
        </div>

        <div id="sms" class="item">
           
        </div>
        <div id="mail" class="item">
            <a href="mails.action" onclick="toSend('mail','');"><img src="images/mail.png" alt="发送邮件" /></a><br />
            <a href="mails.action" onclick="toSend('mail','');" class="dark">发送邮件</a>
        </div>
    </div>
    </div>
    <div id="start" class="area">
    <div class="title"><span>☉&nbsp;开 始</span><div>&nbsp;</div></div>
    <div class="content">
        <ul>
            <li id="liAdd"><a href="selectTemplet.aspx">录入数据</a>： 
            <a href="kehu!foradd.action">客户</a><span>|</span>
            <a href="kehugtjl!foradd.action">客户沟通记录</a><span>|</span>
            <a href="edit.aspx?tid=3">产品</a><span>|</span>
            <a href="edit.aspx?tid=4">供应商</a><span>|</span>
            <a href="edit.aspx?tid=7">销售记录</a><span>|</span>
            <a href="edit.aspx?tid=13">销售明细</a><span></span>
</li>
            <li id="liBrowse"><a href="templets.aspx?mode=DataAdmin">浏　　览</a>：
             <a href="kehu!show.action">客户</a><span>|</span>
             <a href="kehugtjl!show.action">客户沟通记录</a><span>|</span>
             <a href="view.aspx?tid=3">产品</a><span>|</span>
             <a href="view.aspx?tid=4">供应商</a><span>|</span>
             <a href="view.aspx?tid=7">销售记录</a><span>|</span>
             <a href="view.aspx?tid=13">销售明细</a><span></span>

</li>
            <li id="liSearch"><a href="dataHome.aspx">搜　　索</a>： 
            <a href="kehu!forfind.action">客户</a><span>|</span>
            <a href="kehugtjl!forfind.action">客户沟通记录</a><span>|</span>
            <a href="advSearch.aspx?tid=3">产品</a><span>|</span>
            <a href="advSearch.aspx?tid=4">供应商</a><span>|</span>
            <a href="advSearch.aspx?tid=7">销售记录</a><span>|</span>
            <a href="advSearch.aspx?tid=13">销售明细</a><span></span>
   </li>
           
            <li id="liDirs"><a href="dir.aspx">打开目录</a>：
             <a href="kehu!show.action">客户</a><span>|</span>
             <a href="dir.aspx?id=2">供应商</a><span>|</span>
             <a href="dir.aspx?id=3">产品</a><span>|</span>
             <a href="kehugtjl!show.action">联系记录</a></li>
            
            
            
        </ul>
        <br />
       
        <div class="highlight hide">
        <img src="images/info.gif"  /> 为了获得更好的操作体验，推荐您使用下列浏览器之一：
        <a href="http://windows.microsoft.com/zh-CN/internet-explorer/downloads/ie-9/worldwide-languages" target="_blank">IE 9.0</a>、<a href="http://firefox.com.cn" target="_blank">Firefox</a>、<a href="https://www.google.com/chrome?hl=zh-CN" target="_blank">Chrome</a>。
        </div>
    </div>
    </div>
    <hr >
    <div id="bottom" >
   <center><font size="12" face="草檀斋毛泽东字体" color="red"><marquee>全宇有限公司</marquee></font></center>
   <hr > 
    <font size="6">公示：</font>
    <p><font size="3">
    <c:forEach var="affiche" items="${requestScope.affiches }">
        &nbsp;&nbsp;&nbsp;&nbsp;${affiche.content }<p>
          <img src="${affiche.pic }" width="100px" height="100px"/>
        </c:forEach>
        </font>
        
      
    </div>

    <script src="js/comm.js" type="text/ecmascript"></script>
    <script src="js/home.js" type="text/ecmascript"></script>
    
<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired"), document.getElementById("pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired"), document.getElementById("pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired"), document.getElementById("pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired = document.all ? document.all["pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired"] : document.getElementById("pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired");
pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired.controltovalidate = "pwd_chgPass_ChangePasswordContainerID_CurrentPassword";
pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired.errormessage = "必须填写“密码”。";
pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired.validationGroup = "ctl02$ChangePassword1";
pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired.initialvalue = "";
var pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired = document.all ? document.all["pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired"] : document.getElementById("pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired");
pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired.controltovalidate = "pwd_chgPass_ChangePasswordContainerID_NewPassword";
pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired.errormessage = "必须填写“新密码”。";
pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired.validationGroup = "ctl02$ChangePassword1";
pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired.initialvalue = "";
var pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired = document.all ? document.all["pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired"] : document.getElementById("pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired");
pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired.controltovalidate = "pwd_chgPass_ChangePasswordContainerID_ConfirmNewPassword";
pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired.errormessage = "必须填写“确认新密码”。";
pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired.validationGroup = "ctl02$ChangePassword1";
pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired.initialvalue = "";
var pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare = document.all ? document.all["pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare"] : document.getElementById("pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare");
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.controltovalidate = "pwd_chgPass_ChangePasswordContainerID_ConfirmNewPassword";
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.errormessage = "“确认新密码”与“新密码”项必须匹配。";
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.display = "Dynamic";
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.validationGroup = "ctl02$ChangePassword1";
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.evaluationfunction = "CompareValidatorEvaluateIsValid";
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.controltocompare = "pwd_chgPass_ChangePasswordContainerID_NewPassword";
pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare.controlhookup = "pwd_chgPass_ChangePasswordContainerID_NewPassword";
//]]>
</script>


<script type="text/javascript">
//<![CDATA[
InitPop('myTheme_popup');InitPop('pwd_popup');
var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        Sys.Application.initialize();
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"myTheme_upPop","displayAfter":500,"dynamicLayout":true}, null, null, $get("myTheme_upgPop"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"pwd_upPop","displayAfter":500,"dynamicLayout":true}, null, null, $get("pwd_upgPop"));
});

document.getElementById('pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('pwd_chgPass_ChangePasswordContainerID_CurrentPasswordRequired'));
}

document.getElementById('pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('pwd_chgPass_ChangePasswordContainerID_NewPasswordRequired'));
}

document.getElementById('pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('pwd_chgPass_ChangePasswordContainerID_ConfirmNewPasswordRequired'));
}

document.getElementById('pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('pwd_chgPass_ChangePasswordContainerID_NewPasswordCompare'));
}
//]]>
</script>
</form>

  </body>
</html>
