function getNameFromObj(n){return n.nextSibling.innerHTML}function chkEnter(){var n=getEvent(),t=n.srcElement||n.target,i=n.keyCode||n.which;return i==13?(t.blur(),!1):!0}function showObjMenu(n){n=n||event;var t=n.srcElement||n.target;return HasPanelShowing()||(srcObj=t,$("#curRoleName").val(getNameFromObj(t)),HideAllMenu(),$("#menu_obj a[accesskey='R']").nextAll().css("display",$(srcObj).parent().is(".role_locked")?"none":""),ShowPop("menu_obj")),n.cancelBubble=!0,!1}function showBodyMenu(n){var t,i,r;return(n=n||event,t=$(n.srcElement||n.target),t.is(".obj > span")&&(i=t.closest(".obj").addClass("temp"),r=within(t[0],getEvent()),i.removeClass("temp"),r))?(HideAllMenu(),!0):(HasPanelShowing()||(HideAllMenu(),ShowPop("menu_body")),n.cancelBubble=!0,!1)}function listUsers(){location="users.aspx?role="+encodeUrl(getNameFromObj(srcObj))}function doDefault(n){n=n||event,srcObj=n.srcElement||n.target,$f("curRoleName").value=getNameFromObj(srcObj),__doPostBack("showAttributes","")}function del(){if(!confirm("确定要删除该角色吗？"))return!1;var n;try{n=srcObj.nextSibling.innerHTML}catch(t){return alert("操作失败！"),!1}return PageMethods.delRole(n,delRole_callback),!1}function delRole_callback(n){if(n==""){var t=srcObj.parentNode;t.parentNode.removeChild(t)}else alert(n)}function createRole(){var t=document.createElement("div"),r,i,n;return t.className="obj rolebg",r=document.createElement("div"),t.appendChild(r),i=document.createElement("span"),t.appendChild(i),n=document.createElement("input"),n.type="text",n.id="newName",n.value="新建角色",n.onfocus=function(){this.select()},n.onblur=doCreateRole,n.onkeydown=chkEnter,i.appendChild(n),$f("objsDiv").appendChild(t),$f("newName").focus(),!1}function doCreateRole(){var t=getEvent(),n,i;if(t==null)return!1;if(n=t.srcElement||t.target,i=$.trim(n.value),i=="")return n.focus(),!1;n.disabled="disabled",PageMethods.addRole(i,createRole_callback)}function createRole_callback(n){var t=$f("newName"),i,u,r;n==""?(i=t.parentNode.previousSibling,i.onmouseover=mover,i.onmouseout=mout,i.onclick=doDefault,i.oncontextmenu=showObjMenu,u=document.createTextNode(t.value),t.parentNode.replaceChild(u,t)):(r=t.parentNode.parentNode,r.parentNode.removeChild(r),alert(n))}function setVisible(){$("#rwPower").css("display",$f("attr_cbFullPower").checked?"none":""),$("#attr_enFields").css("display",$f("attr_rbSome").checked?"":"none"),$("#spanOptions").css("display",$f("attr_rbNo").checked?"none":"")}function setReadLevel(){var t=$("#attr_cbRead"),n=t.is(":checked");$("#attr_infoReadLevel").css("display",n?"":"none"),$("#attr_cbComment,label[for='attr_cbComment']").css("display",n?"":"none"),$("#attr_cbAdmin,label[for='attr_cbAdmin']").css("display",n?"":"none")}function setBatchSend(){var n=getEventSrc();$(n).parent().find("span:first").css("display",$(n).is(":checked")?"":"none")}function ShowFilter(n){var t,i="advSearch.aspx?mode=temp&tid="+$("#attr_ddlTempletPower").val()+"&timeStamp="+(new Date).getTime();return t=window.showModelessDialog?window.showModelessDialog(i,window,"dialogHeight:400px;dialogWidth:560px;center:yes;status:no;help:0;scroll:0"):window.open(i,"help","height=400,width=560,status=no,toolbar=no,menubar=no,location=no"),t==null?alert("条件设置窗口被拦截!\n请取消浏览器的弹出窗口屏蔽功能，或将本系统的网址加入浏览器的信任站点列表。"):$(n).prevAll(":checkbox").each(function(){$(this).data("oriChecked",this.checked).prop("checked",!0)}),!1}function CancelFilter(){$(".pop:visible a[onclick*='ShowFilter']").prevAll(":checkbox").each(function(){$(this).data("oriChecked")!=!0&&$(this).prop("checked",!1)})}function setReadCond(){$("#attr_cbReadCond").prop("disabled",$("#attr_ddlReadPower").val()=="-1")}var srcObj;$(function(){attMouseEvent("objsDiv");var n=Sys.WebForms.PageRequestManager.getInstance();n.add_initializeRequest(showLoading),n.add_endRequest(hideLoading)}),document.oncontextmenu=showBodyMenu,document.onclick=HideAllMenu,document.onscroll=HideAllMenu,document.onselectstart=HideAllMenu,document.onmouseout=function(n){n=n||event;var t=n.clientX>=0&&n.clientX<document.documentElement.clientWidth&&n.clientY>=0&&n.clientY<document.documentElement.clientHeight;t||HideAllMenu()}