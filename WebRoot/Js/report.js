function InitSettingCtl(n){$("#tdSetting select[id^='p_ddlG']").each(function(){SetGroup(this)}),SetTitleDiv(),setDetailSort(n)}function addGroup(){$("#tdSetting div.hide:first").removeClass("hide"),$("#tdSetting div.hide").length==0&&$("#p_aAdd").hide()}function SetTitleDiv(){$("#divTitle").css("display",$("#p_cbTitle").is(":checked")?"":"none")}function InitTable(){$("#loading").hide(),$("#up").show().width(4e4),$("#up").width($("#rt").width()+24);var n=$("#header").attr("title","拖动列边界线调整列宽度").mousedown(function(){started=$(this).css("cursor")=="col-resize"});l=$("<div class='dragLine hide' id='dragLine'><\/div>").appendTo("#dataArea"),$(document).mousemove(function(){if(started==!0){var t=getEvent(),n=$("#header");l.css({left:t.clientX+$(window).scrollLeft(),top:n.offset().top+1,height:n.outerHeight()-2}),l.removeClass("hide")}}).mouseup(function(){if(!started)return!0;if(!$(curCell).is("th"))return l.addClass("hide"),started=!1,!0;var n=getEvent(),t=pointer(n).x,i=$(curCell).offset().left;$("#up").width(4e4),curCell.style.width=Math.max(t-i,16)+"px",$("#up").width($("#rt").width()+24),l.addClass("hide"),started=!1}).mouseout(function(){var n=getEvent(),t=n.clientX>=0&&n.clientX<document.documentElement.clientWidth&&n.clientY>=0&&n.clientY<document.documentElement.clientHeight;t||(started=!1,l.addClass("hide"))}),document.onselectstart=function(){return selecting=!0,!started},$("th",n).mousemove(OnCell)}function OnCell(){if(started)return!0;var u=getEvent(),n=u.srcElement||u.target,t=$("#header"),i=pointer(u).x,r=$(n).offset().left,f=n.offsetWidth;i-r>=0&&i-r<=4&&n.cellIndex>2?(t.css("cursor","col-resize"),curCell=t[0].cells(n.cellIndex-1)):r+f-i>=0&&r+f-i<=4?(t.css("cursor","col-resize"),curCell=n):t.css("cursor","default")}function setDetailSort(n){$("#p_cbDetail").is(":checked")?(setSortItems(n),$("#divDetailSort").css("display","")):$("#divDetailSort").css("display","none")}function setSortItems(n){$("#p_cbDetail").is(":checked")&&($("#p_ddlDetailSort").html(""),$("#p_cblFields input:checked").each(function(){$("<option value='"+$(this).parent().attr("v")+"'>"+$("#p_cblFields label[for='"+this.id+"']").text()+"<\/option>").appendTo("#p_ddlDetailSort")}),n&&$("#p_ddlDetailSort").val(n),$("#p_ddlDetailSort").css("zoom","1.1").css("zoom","1"))}function PreMakeReport(){$("#up,#EmptyPrompt").hide(),$("#loading").show();var n=$("#p_ddlDetailSort").val();$("#__EVENTARGUMENT").val(n)}function setButtonBar(){var n=$f("btnArea"),t=(Math.min(document.documentElement.clientWidth,$("#dataArea").width())-n.offsetWidth)/2;n.style.position="absolute",n.style.left=Math.max(0,t)+$(window).scrollLeft()+"px"}function toggleSpes(n){$(n).find("option:selected").val()=="Specified"?$(n).next().removeClass("hide"):$(n).next().addClass("hide")}function SetGroup(n){var i,t,r;n=$(n),i=n.find("option:selected"),n.parent().find("select[id^='p_ddlSort']:first option[value='']").text(i.text()),t=i.attr("type"),t?(r=n.parent().find("span:first").removeClass("hide"),toggleSpes(r.find("select:first"))):n.parent().find("span:first").addClass("hide"),t=="DateTime"?n.parent().find("input:first").attr("title","输入作为分组间隔的日期或时间值。如，输入“2008-1-1,2009-1-1”将会分为2008年及其之前和之后共三个组。若不设置，系统将自动分组。"):(t=="Numeric"||t=="Formula")&&n.parent().find("input:first").attr("title","输入作为分组间隔的数值。如，输入“100,1000”将会分为100以下、100到1000、1000以上共三个组。若不设置，系统将自动分组。")}function PreSave(){var n="",t;return $("#header th").each(function(){n+=$(this).attr("f")+","+$(this).width()+"|"}),$("#layout").val(n),t=$("#p_ddlDetailSort").val(),$("#__EVENTARGUMENT").val(t),!0}function ProcessForExportAs(n){n.find("[title],[f]").removeAttr("title f"),n.find("a[href]").removeAttr("target")}function setDefault(){var n=getEventSrc(),t=$(n).closest("tr").attr("reportid");__doPostBack("btnManage","default_"+t)}function delReport(){var i=getEventSrc(),n=$(i).closest("tr"),t;confirm("确定要删除“"+n.find("td:first").text()+"”吗？")&&(t=n.attr("reportid"),__doPostBack("btnManage","delete_"+t))}function rename(){var n=$(getEventSrc()),i=n.closest("tr"),t=i.find("td:first"),r;n.text()=="更名"?(r=t.text(),t.empty(),$("<input type='text' style='width:98%' value='"+r+"' title='回车提交' />").change(function(){var r=getEvent(),t,i;if(within(n,r))return!1;if(t=$.trim($(this).val()),i=$(this).closest("tr").attr("reportid"),t==""||t==DeBase64(i))return alert("请输入新的名称！"),!1;__doPostBack("btnManage",Base64(t)+"_"+i)}).keydown(function(){return getKeyCode()==13?($(this).change(),!1):!0}).appendTo(t),n.text("取消")):(n.text("更名"),t.text(DeBase64(i.attr("reportid"))))}function showMenu(){var i=$("#btnSwicth"),n=i.offset(),t=n.top,r=$("#reportList").outerHeight();t+r>document.documentElement.clientHeight&&(t=n.top+i.height()-r+4),$("#reportList").css({left:n.left,top:t,display:"none"}).fadeIn("fast")}var views="123456",started,selecting,curCell,l;$(function(){$(window).load(function(){$("#loading").hide()});var n=Sys.WebForms.PageRequestManager.getInstance();n.add_endRequest(function(n,t){if($("#EmptyPrompt").hide(),t.get_error()!=null){var i=t.get_error().message;$("#loading").hide(),alert(i),t.set_errorHandled(!0)}}),$(document).click(function(){var n=$(getEventSrc());n.is("#btnSwicth")||HideAllMenu()}),$("#btnExport").length==0&&(document.oncontextmenu=function(){return $(getEventSrc()).is(":input")?!0:CanelEvent()},document.documentElement.oncopy=function(){return $.browser.msie?$(getEventSrc()).is(":input,td,p"):getSelection().toString().indexOf(String.fromCharCode(9))==-1})}),started=!1,selecting=!1