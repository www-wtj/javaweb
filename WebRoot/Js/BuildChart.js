function toggleLoading(n){$("#loading").css("display",n?"none":"block"),$("#imgChart").css("display",n?"block":"none")}function ddlXsChanged(){var n=$("#options_ddlXs option:selected").attr("type");n?($("#liSeps").css("display",""),n=="DateTime"?$("#options_SepValues").attr("title","输入作为横坐标上分组间隔的日期或时间值。如，输入“2008-1-1,2009-1-1”将会分为2008年及其之前和之后共三个组。若不设置，系统将自动分组。"):(n=="Numeric"||n=="Formula")&&$("#options_SepValues").attr("title","输入作为横坐标上分组间隔的数值。如，输入“100,1000”将会分为100以下、100到1000、1000以上共三个组。若不设置，系统将自动分组。"),SetGroup()):$("#liSeps").css("display","none")}function modeChanged(){$("#options_rblType_1").is(":checked")?$("#options_ddlSortMode").prop("disabled",!0)[0].selectedIndex=2:$("#options_ddlSortMode").prop("disabled",!1)}function SetGroup(){var n=$("#options_ddlGroupby").val();$("#options_SepValues").css("display",n=="Specified"?"":"none")}function StatModeChanged(){$("#options_ddlYs").prop("disabled",$("#options_ddlStatMode").val()=="count")}function setDefault(){var n=getEventSrc(),t=$(n).closest("tr").attr("chartid");__doPostBack("btnManage","default_"+t)}function delChart(){var i=getEventSrc(),n=$(i).closest("tr"),t;confirm("确定要删除“"+n.find("td:first").text()+"”吗？")&&(t=n.attr("chartid"),__doPostBack("btnManage","delete_"+t))}function rename(){var n=$(getEventSrc()),i=n.closest("tr"),t=i.find("td:first"),r;n.text()=="更名"?(r=t.text(),t.empty(),$("<input type='text' style='width:98%' value='"+r+"' title='回车提交' />").change(function(){var r=getEvent(),t,i;if(within(n,r))return!1;if(t=$.trim($(this).val()),i=$(this).closest("tr").attr("chartid"),t==""||t==DeBase64(i))return alert("请输入新的名称！"),!1;__doPostBack("btnManage",Base64(t)+"_"+i)}).keydown(function(){return getKeyCode()==13?($(this).change(),!1):!0}).appendTo(t),n.text("取消")):(n.text("更名"),t.text(DeBase64(i.attr("chartid"))))}var views="123456";$(function(){ddlXsChanged(),modeChanged(),$(window).load(function(){$("#loading").hide(),StatModeChanged()});var n=Sys.WebForms.PageRequestManager.getInstance();n.add_endRequest(function(n,t){if($("#EmptyPrompt").hide(),t.get_error()!=null){var i=t.get_error().message;$("#loading").hide(),alert(i),t.set_errorHandled(!0)}})})