<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="sidebar">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sidebar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   <link href="App_Themes/Default/base.css" type="text/css" rel="stylesheet" /><style type="text/css">
	.d1_0 { text-decoration:none; }
	.d2_0 { text-decoration:none; }
	.d3_0 { text-decoration:none; }
	.d_0 { text-decoration:none; }
	.d_1 { padding:0px 3px 0px 3px; }

</style></head>
<body id="body">
   <form name="form1" method="post" action="sidebar.aspx" id="form1" target="_self">
<div>
<input type="hidden" name="d1_ExpandState" id="d1_ExpandState" value="nnnnnnn" />
<input type="hidden" name="d1_SelectedNode" id="d1_SelectedNode" value="" />
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="d1_PopulateLog" id="d1_PopulateLog" value="" />
<input type="hidden" name="d2_ExpandState" id="d2_ExpandState" value="nnnnnncnnnn" />
<input type="hidden" name="d2_SelectedNode" id="d2_SelectedNode" value="" />
<input type="hidden" name="d2_PopulateLog" id="d2_PopulateLog" value="" />
<input type="hidden" name="d3_ExpandState" id="d3_ExpandState" value="nnnnnnn" />
<input type="hidden" name="d3_SelectedNode" id="d3_SelectedNode" value="" />
<input type="hidden" name="d3_PopulateLog" id="d3_PopulateLog" value="" />
<input type="hidden" name="d_ExpandState" id="d_ExpandState" value="ennnn" />
<input type="hidden" name="d_SelectedNode" id="d_SelectedNode" value="" />
<input type="hidden" name="d_PopulateLog" id="d_PopulateLog" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTk4MjE4MTcxM2QYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgQFAmQxBQJkMgUCZDMFAWSqNyS6JvnGnQqR3LRibSX5PLLU/g==" />
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


<script src="/WebResource.axd?d=QCuGEYXmR0xm0rTy2CEYr_E6o8aaNUTPMPKsJGh9fEWgZlTPUN1LWU5LVHdVKTeKRecHijvXwDYUdnmpPZHKHHgxcw81&amp;t=635295382417495136" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[

    function TreeView_PopulateNodeDoCallBack(context,param) {
        WebForm_DoCallback(context.data.treeViewID,param,TreeView_ProcessNodeData,context,TreeView_ProcessNodeData,false);
    }
var d1_Data = null;var d2_Data = null;var d3_Data = null;var d_Data = null;//]]>
</script>

<script src="js/MsAjax.js" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DAFD34BD" />
</div>
   <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('sm', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['fmain'], ['btnReload'], [], 90);
//]]>
</script>

    <div id="main">
	
        
        <div id="inMain"><div id="Starts" class="item">

         <div id="tabs" class="ui-tabs">
            <ul title="点击标签固定标签页；点击已固定标签打开其起始页面">
                <li><a href="#start" title="开始（单击打开首页）" onmouseover="tab(0)" rev="home.aspx" id="t0"></a></li>
                <li id="liAdd"><a href="#add" title="添加" onmouseover="tab(1)" rev="selectTemplet.aspx" id="t1"></a></li>
                <li><a href="#browse" title="浏览" onmouseover="tab(2)" rev="templets.aspx?mode=DataAdmin" id="t2"></a></li>
                <li><a href="#serach" title="搜索" onmouseover="tab(3)" rev="dataHome.aspx" id="t3"></a></li>
                <li id="liFav"><a href="#fav" title="收藏" onmouseover="tab(4)" rev="dataHome.aspx?Area=favs" id="t4"></a></li>
                <li><a href="#shortcut" title="快捷方式" onmouseover="tab(5)" rev="dataHome.aspx?Area=shortcuts" id="t5"></a></li>
            </ul>
            <div id="start">
                <ul>
                    <li id="dataAdmin"><a href="templets.aspx?mode=DataAdmin">数据中心</a></li>
                    <li id="templets"><a href="templets.aspx">设计中心</a></li>
                    <li id="liInfo"><a href="infoList.aspx">信息中心</a><span id="addInfo"> - <a href="infoEdit.aspx">发布</a></span></li>
                    
                    <li id="help"><a href="#" title="查看与当前操作相关的帮助信息" onclick="return showHelp();">实时帮助</a></li>
                </ul>
            </div>
            <div id="add">
                <div id="d1" class="tree">
		<table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=1" id="d1t0i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=1" id="d1t0">客户</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=3" id="d1t1i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=3" id="d1t1">产品</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=4" id="d1t2i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=4" id="d1t2">供应商</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=5" id="d1t3i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=5" id="d1t3">联系人</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=7" id="d1t4i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=7" id="d1t4">采购记录</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=8" id="d1t5i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=8" id="d1t5">销售记录</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="edit.aspx?tid=6" id="d1t6i" tabindex="-1"><img src="images/data_add.gif" alt="" style="border-width:0;" /></a></td><td><a class="d1_0" href="edit.aspx?tid=6" id="d1t6">工作任务</a></td>
			</tr>
		</table>
	</div>
                
            </div>
            <div id="browse">
                <div id="d2" class="tree">
		<table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="view.aspx?tid=1" id="d2t0i" tabindex="-1"><img src="images/data_browse.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=1" id="d2t0">客户</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="view.aspx?tid=3" id="d2t1i" tabindex="-1"><img src="images/data_browse.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=3" id="d2t1">产品</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="view.aspx?tid=4" id="d2t2i" tabindex="-1"><img src="images/data_browse.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=4" id="d2t2">供应商</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="view.aspx?tid=5" id="d2t3i" tabindex="-1"><img src="images/data_browse.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=5" id="d2t3">联系人</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="view.aspx?tid=7" id="d2t4i" tabindex="-1"><img src="images/data_browse.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=7" id="d2t4">采购记录</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="view.aspx?tid=8" id="d2t5i" tabindex="-1"><img src="images/data_browse.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=8" id="d2t5">销售记录</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><a id="d2n6" href="javascript:TreeView_ToggleNode(d2_Data,6,document.getElementById('d2n6'),' ',document.getElementById('d2n6Nodes'))"><img src="images/plus.gif" alt="展开 工作任务" style="border-width:0;" /></a></td><td><a class="d2_0" href="view.aspx?tid=6" id="d2t6">工作任务</a></td>
			</tr>
		</table><div id="d2n6Nodes" style="display:none;">
			<table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:16px;height:1px"></div></td><td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我安排的任务" id="d2t7i" tabindex="-1"><img src="images/filter.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我安排的任务" id="d2t7">我安排的任务</a></td>
				</tr>
			</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:16px;height:1px"></div></td><td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我的任务" id="d2t8i" tabindex="-1"><img src="images/filter.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我的任务" id="d2t8">我的任务</a></td>
				</tr>
			</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:16px;height:1px"></div></td><td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我的待办任务" id="d2t9i" tabindex="-1"><img src="images/filter.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我的待办任务" id="d2t9">我的待办任务</a></td>
				</tr>
			</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:16px;height:1px"></div></td><td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我的超期未了事务" id="d2t10i" tabindex="-1"><img src="images/filter.gif" alt="" style="border-width:0;" /></a></td><td><a class="d2_0" href="advSearch.aspx?tid=6&amp;mode=applyFilter&amp;filterName=我的超期未了事务" id="d2t10">我的超期未了事务</a></td>
				</tr>
			</table>
		</div>
	</div>
                
            </div>
            <div id="serach">
                <div id="d3" class="tree">
		<table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=1" id="d3t0i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=1" id="d3t0">客户</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=3" id="d3t1i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=3" id="d3t1">产品</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=4" id="d3t2i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=4" id="d3t2">供应商</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=5" id="d3t3i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=5" id="d3t3">联系人</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=7" id="d3t4i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=7" id="d3t4">采购记录</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=8" id="d3t5i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=8" id="d3t5">销售记录</a></td>
			</tr>
		</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><img src="images/noexpand.gif" alt="" /></td><td><a href="advSearch.aspx?tid=6" id="d3t6i" tabindex="-1"><img src="images/data_find.gif" alt="" style="border-width:0;" /></a></td><td><a class="d3_0" href="advSearch.aspx?tid=6" id="d3t6">工作任务</a></td>
			</tr>
		</table>
	</div>
                
            </div>
            <div id="fav">
                <ul id="divFavs" class="tabul"></ul>
                <div id="msg4" class="msg">无项目</div>
            </div>
            <div id="shortcut">
                <ul id="divShortcuts" class="tabul"></ul>
                <div id="msg5" class="msg">无项目</div>
            </div>
        </div>       
        </div><div id="Dirs" class="item">
            <div class="title bgu"><span></span>目录</div>
            <div class="taskArea">
                <div id="d" class="tree">
		<table cellpadding="0" cellspacing="0" style="border-width:0;">
			<tr>
				<td><a id="dn0" href="javascript:TreeView_ToggleNode(d_Data,0,document.getElementById('dn0'),'-',document.getElementById('dn0Nodes'))"><img src="images/tree/dashminus.gif" alt="折叠 目录" style="border-width:0;" /></a></td><td><a href="0" id="dt0i" tabindex="-1"><img src="images/root.gif" alt="" style="border-width:0;" /></a></td><td class="d_1"><a class="d_0" href="0" id="dt0">目录</a></td>
			</tr>
		</table><div id="dn0Nodes" style="display:block;">
			<table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:20px;height:1px"></div></td><td><img src="images/tree/t.gif" alt="" /></td><td><a href="1" id="dt1i" tabindex="-1"><img src="images/off.gif" alt="" style="border-width:0;" /></a></td><td class="d_1"><a class="d_0" href="kehu!show.action"  target="mainFrame">客户</a></td>
				</tr>
			</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:20px;height:1px"></div></td><td><img src="images/tree/t.gif" alt="" /></td><td><a href="3" id="dt2i" tabindex="-1"><img src="images/off.gif" alt="" style="border-width:0;" /></a></td><td class="d_1"><a class="d_0" href="3"  target="mainFrame">产品</a></td>
				</tr>
			</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:20px;height:1px"></div></td><td><img src="images/tree/t.gif" alt="" /></td><td><a href="2" id="dt3i" tabindex="-1"><img src="images/off.gif" alt="" style="border-width:0;" /></a></td><td class="d_1"><a class="d_0" href="2"  target="mainFrame">供应商</a></td>
				</tr>
			</table><table cellpadding="0" cellspacing="0" style="border-width:0;">
				<tr>
					<td><div style="width:20px;height:1px"></div></td><td><img src="images/tree/l.gif" alt="" /></td><td><a href="4" id="dt4i" tabindex="-1"><img src="images/off.gif" alt="" style="border-width:0;" /></a></td><td class="d_1"><a class="d_0" href="kehugtjl!show.action"  target="mainFrame">联系记录</a></td>
				</tr>
			</table>
		</div>
	</div>
            </div>
        </div><div id="Views" class="item">
        <div class="title bgu"><span></span>视图</div>
        <div class="taskArea">
        <ul>
            <li id="v1"><a href="to.htm?viewObj.aspx"  target="mainFrame">缩略视图</a></li>
            <li id="v2"><a href="to.htm?viewData.aspx"  target="mainFrame">表格视图</a></li>
            <li id="v3"><a href="to.htm?OverView.aspx"  target="mainFrame">概要视图</a></li>
            <li id="v4"><a href="to.htm?Detail.aspx?InSerial=true"  target="mainFrame">详情视图</a></li>
            <li id="v5"><a href="to.htm?BuildChart.aspx"  target="mainFrame">图表视图</a></li>
            <li id="v6"><a href="to.htm?report.aspx"  target="mainFrame">报表视图</a></li>
        </ul>
        </div>
        </div><div id="CurrentInfo" class="item">
        
        
        <input onclick="__doPostBack('btnReload','')" name="btnReload" type="button" id="btnReload" class="hide" />
        
</div>

        
        
        
        <div id="rt"><span id="diy">＋</span><span id="close">×</span></div>
        <script src="js/comm.js" type="text/javascript"></script>
        <script src="js/sidebar.js" type="text/javascript"></script>
    
<script type="text/javascript">
//<![CDATA[
var d1_ImageArray =  new Array('', '', '', 'images/noexpand.gif', 'images/plus.gif', 'images/minus.gif');
var d2_ImageArray =  new Array('', '', '', 'images/noexpand.gif', 'images/plus.gif', 'images/minus.gif');
var d3_ImageArray =  new Array('', '', '', 'images/noexpand.gif', 'images/plus.gif', 'images/minus.gif');
var d_ImageArray =  new Array('images/off.gif', 'images/off.gif', 'images/off.gif', 'images/tree/noexpand.gif', 'images/tree/plus.gif', 'images/tree/minus.gif', 'images/tree/i.gif', 'images/tree/r.gif', 'images/tree/rplus.gif', 'images/tree/rminus.gif', 'images/tree/t.gif', 'images/tree/tplus.gif', 'images/tree/tminus.gif', 'images/tree/l.gif', 'images/tree/lplus.gif', 'images/tree/lminus.gif', 'images/tree/dash.gif', 'images/tree/dashplus.gif', 'images/tree/dashminus.gif');
//]]>
</script>


<script type="text/javascript">
//<![CDATA[

WebForm_InitCallback();var d1_Data = new Object();
d1_Data.images = d1_ImageArray;
d1_Data.collapseToolTip = "折叠 {0}";
d1_Data.expandToolTip = "展开 {0}";
d1_Data.expandState = theForm.elements['d1_ExpandState'];
d1_Data.selectedNodeID = theForm.elements['d1_SelectedNode'];
for (var i=0;i<6;i++) {
var preLoad = new Image();
if (d1_ImageArray[i].length > 0)
preLoad.src = d1_ImageArray[i];
}
d1_Data.lastIndex = 7;
d1_Data.populateLog = theForm.elements['d1_PopulateLog'];
d1_Data.treeViewID = 'd1';
d1_Data.name = 'd1_Data';
var d2_Data = new Object();
d2_Data.images = d2_ImageArray;
d2_Data.collapseToolTip = "折叠 {0}";
d2_Data.expandToolTip = "展开 {0}";
d2_Data.expandState = theForm.elements['d2_ExpandState'];
d2_Data.selectedNodeID = theForm.elements['d2_SelectedNode'];
for (var i=0;i<6;i++) {
var preLoad = new Image();
if (d2_ImageArray[i].length > 0)
preLoad.src = d2_ImageArray[i];
}
d2_Data.lastIndex = 11;
d2_Data.populateLog = theForm.elements['d2_PopulateLog'];
d2_Data.treeViewID = 'd2';
d2_Data.name = 'd2_Data';
var d3_Data = new Object();
d3_Data.images = d3_ImageArray;
d3_Data.collapseToolTip = "折叠 {0}";
d3_Data.expandToolTip = "展开 {0}";
d3_Data.expandState = theForm.elements['d3_ExpandState'];
d3_Data.selectedNodeID = theForm.elements['d3_SelectedNode'];
for (var i=0;i<6;i++) {
var preLoad = new Image();
if (d3_ImageArray[i].length > 0)
preLoad.src = d3_ImageArray[i];
}
d3_Data.lastIndex = 7;
d3_Data.populateLog = theForm.elements['d3_PopulateLog'];
d3_Data.treeViewID = 'd3';
d3_Data.name = 'd3_Data';
var d_Data = new Object();
d_Data.images = d_ImageArray;
d_Data.collapseToolTip = "折叠 {0}";
d_Data.expandToolTip = "展开 {0}";
d_Data.expandState = theForm.elements['d_ExpandState'];
d_Data.selectedNodeID = theForm.elements['d_SelectedNode'];
for (var i=0;i<19;i++) {
var preLoad = new Image();
if (d_ImageArray[i].length > 0)
preLoad.src = d_ImageArray[i];
}
d_Data.lastIndex = 5;
d_Data.populateLog = theForm.elements['d_PopulateLog'];
d_Data.treeViewID = 'd';
d_Data.name = 'd_Data';
Sys.Application.initialize();
//]]>
</script>
</form>
  </body>
</html>
