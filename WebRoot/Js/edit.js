function DoAutoFill(n,t){return function(){var o=getEventSrc(),u,r,i,f,e;if($(o).is("label"))return!0;for(f="",e=0;e<t.length;e++){if(u=t[e],u=="SecLevel")r=$("#ddlSecLevel");else if(isNaN(u))if(u=="Builder"){if(typeof Builder!="undefined"&&Builder!=null){f+="Builder:"+Base64(Builder)+"|";continue}}else continue;else r=$("#C"+u);if(r.length>0){if(r.is(":input")?i=r.val():r.is("span")?(i="",r.find(":checked").each(function(){i+=$("label[for='"+this.id+"']",r).html()+"|"}),i.length>0&&(i=i.substr(0,i.length-1))):i=r.text(),i=="")return!0;f+=u+":"+Base64(i)+"|"}}$("#"+n).val("").addClass("getting").attr("title","正在从服务器获取数据……"),$.get("ajax.aspx",{action:"getValue",acfid:n.replace("C",""),arg:f},function(t){var i=$("#"+n).val(t);checkLength(i[0]),tryTriggerAutoFill(n),i.removeClass("getting").css("background-color","#ff4400").animate({backgroundColor:"#ffffff"},1200,function(){$(this).removeAttr("title").css("background-color","")})},"text")}}function checkLength(n){var t=parseInt(n.getAttribute("maxlength")),i;n.value.length>t&&(n.value=n.value.substr(0,t),i=$(n).closest("table.r").find("td:first").text(),setTimeout("alert('“"+i+"”允许长度为"+t+"，超出部分已被截断！');",0))}function reFill(n){DoAutoFill(n,$("#"+n).attr("AutoFill").split(",")).call()}function AcShown(){return $(".completion:visible").length>0}function setBaseString(){UpdateEditorElement(),oriFormValues=$(":input,:checkbox,:radio","#up").serialize()}function IsDirty(){return UpdateEditorElement(),oriFormValues!=$(":input,:checkbox,:radio","#up").serialize()}function setDirty(){oriFormValues=""}function setLayout(){var n="";$("#editArea > table.r").each(function(t){n+=this.id.substr(2)+",0,"+t+"|"}),$.get("ajax.aspx",{action:"saveLayout",layoutType:0,layout:n}),$(".r").removeAttr("style")}function doValidate(){return UpdateEditorElement(),typeof Page_ClientValidate!="undefined"&&Page_ClientValidate!=null?Page_ClientValidate()?ValUploaders():!1:ValUploaders()}function ValUploaders(){var t,r,i,n;if(typeof requiredUploaders!="undefined"&&requiredUploaders!=null){for(t=requiredUploaders.split("|"),i="",n=0;n<t.length;n++)r=$f(t[n].substring(0,t[n].indexOf("#"))+"_fuPanel"),r&&$(r).find("input:checkbox").length==0&&(i+="- "+t[n].substr(t[n].indexOf("#")+1)+"\n");if(i!="")return alert("以下字段要求至少上传一个文件：\n"+i),!1}return!0}function ValidateEditor(n,t){var i=CKEDITOR.instances[n.controltovalidate];t.IsValid=i!=null?i.getData()!="":!1}function confirmExit(){if(IsDirty()&&!$(self.frameElement).is("iframe")){var n=document.activeElement;if(n&&$(n).is("[href^='javascript:']"))return!0;getEvent().returnValue="当前存在尚未保存的更改！"}}function IsSelected(n,t){t.IsValid=$("input:checked:radio[name='"+n.controltovalidate+"']").length>0}function ValUrl(n,t){var i=$.trim($("#"+n.controltovalidate).val());t.IsValid=i!=""&&i!="输入链接地址"}function SelectedDir(n){__doPostBack("aDir",n),setDirty()}function setNow(n,t){var i=new Date,s=i.getFullYear(),r=i.getMonth()+1,u=i.getDate(),f=i.getHours(),e=i.getMinutes(),o=i.getSeconds();r<10&&(r="0"+r),u<10&&(u="0"+u),f<10&&(f="0"+f),e<10&&(e="0"+e),o<10&&(o="0"+o);switch(t){case"DateAndTime":n.value=s+"-"+r+"-"+u+" "+f+":"+e+":"+o;break;case"DateAndShortTime":n.value=s+"-"+r+"-"+u+" "+f+":"+e;break;case"DateOnly":n.value=s+"-"+r+"-"+u}}function xlsUpload(){var t=$("#xlsToUpload").val(),i=new RegExp("\\.(zip|xls|xml)$","i"),n;return i.test(t)?confirm("确定要导入该文件中的数据吗？")?(n=confirm("如果该Excel文件包含目前所存在的记录，是否更新它们？\n要更新，请点击确定；不更新，而是追加记录，请点击取消。"),$(document).ajaxStart(showLoading).ajaxComplete(hideLoading),$.ajaxFileUpload({url:"ajax.aspx?action=upload",secureuri:!1,fileElementId:"xlsToUpload",dataType:"json",success:function(t){if(hideLoading(),typeof t.error!="undefined"&&t.error!="")alert(t.error);else{var i=t.files,r=null;typeof i!="undefined"&&i!=null&&i.length>0&&(r=i[0]),r==null?alert("文件上传错误！"):(PageMethods.ImportExcel(tid,r,n,Import_callback),processing=!0,showProgress(!0))}},error:function(n,t,i){hideLoading(),alert(i.name+":"+i.description)}}),!1):!1:(alert("无效的文件！"),!1)}function showProgress(n){(n||processing)&&(n?($("#MsgPop").hide(),doShowProgress(0,0,"未知"),setTimeout(function(){showProgress(!1)},1200)):$.getJSON("ajax.aspx",{action:"getProgress"},function(n){var i,t;switch(n.Status){case"Processing":i=n.Total==0?0:parseInt(n.Processed/n.Total*100),doShowProgress(i,n.Processed,n.Total),setTimeout(function(){showProgress(!1)},1200);break;case"Completed":t="",n.UpdatedCount>0&&(t+="成功更新"+n.UpdatedCount+"条记录，"),n.IgnoreCells>0&&(t+="忽略"+n.IgnoreCells+"个单元格，"),n.ImportCount>0&&(t+="成功导入"+n.ImportCount+"条记录，"),n.IgnoreCount>0&&(t+="忽略"+n.IgnoreCount+"行数据，"),t==""&&(t="已执行完毕，请检查执行结果。"),t=t.substr(0,t.length-1)+"。",n.ReportUrl!=null&&n.ReportUrl!=""&&(t+="<a href='"+n.ReportUrl+"' target='_blank'>详细报告<\/a>"),ShowMsgPop(t,-1),processing=!1;break;case"Error":ShowMsgPop("操作失败："+n.Message,-1),processing=!1}}))}function doShowProgress(n,t,i){var r=n>0?n+"%":"0",u="<div style='width:96%;height:16px;border:1px #ccc solid;padding:1px;text-align:left;background:#fff'><div style='background:#00f;height:100%;overflow:hidden;width:"+r+"'><\/div><\/div><div class='center'>"+n+"% ("+t+"/"+i+")<\/div>";ShowMsgPop(u,0,"progress")}function Import_callback(n){hideLoading(),n!=null&&n!=""&&(processing=!1,ShowMsgPop(n,-1))}function resultSelected(){if(HideDialog(),curAcTextbox=="")return __doPostBack("ff$btnOK",""),!0;try{$("#"+curAcTextbox+":enabled").val($("#ff_values option:selected").text()).trigger("change")}catch(n){}return!1}function toExit(){return IsDirty()?confirm("当前存在尚未保存的更改！是否继续？")?(setBaseString(),!0):!1:!0}function CompletionShown(n){var t=$(n.get_completionList());$("#ff_values").addClass("hidden"),$("#ff_Body ul.completion").css("margin-left","0")}function CompletionHidden(){$("#ff_values").removeClass("hidden")}function showDetail(){var t=$("#ff_values option:selected"),n=t.attr("more");typeof n!="undefined"&&n!=""?($("#info legend:first").text(t.text()),$("#info div:first").html(n),$("#info").show()):$("#info").hide()}function MakeEditors(n){$("textarea.ck").each(function(){var t=$(this).attr("len"),i=110;t!=null&&(i=t<=0?180:t<=100?65:t<500?120:t<=1e3?180:t<=5e3?240:400),MakeEditor(this,n,i,!1,!1)})}function MarkAndBack(){referrerIs("viewdata.aspx")?top.needRefreshTable=!0:referrerIs("detail.aspx")&&(top.needRefreshDetail=!0),inPopup()&&(referrerIs("detail.aspx")||referrerIs("viewdata.aspx"))&&location.href.indexOf("&rid=")==-1?setTimeout(function(){parent.$.colorbox.close()},0):history.go(-1)}function Saved(){setBaseString(),(popFrom("viewdata.aspx")||popFrom("detail.aspx"))&&(parent.dataChanged=!0)}function toggleAttrs(){var n=$("#fixedArea").is(":visible");n?($("#fixedArea").slideUp(),$("#showAttr span").attr("class","vis").text("显示属性选项")):($("#fixedArea").slideDown(),$("#showAttr span").attr("class","hid").text("隐藏属性选项")),$.get("ajax.aspx",{action:"setProfile",key:"ShowAttrsInEditing",value:!n})}function getAcContext(n){var e=n.getAttribute("related"),o,r,t,i,u,f;if(e==null||e=="")return null;for(o=e.split(","),u="",f=0;f<o.length;f++){if(r=o[f],r=="SecLevel")t=$("#ddlSecLevel");else if(isNaN(r))if(r=="Builder"){if(typeof Builder!="undefined"&&Builder!=null){u+="Builder:"+Base64(Builder)+"|";continue}}else continue;else t=$("#C"+r);if(t.length>0){if(t.is(":input"))i=t.val();else if(t.is("span"))i="",t.find(":checked").each(function(){i+=$("label[for='"+this.id+"']",t).html()+"|"}),i.length>0&&(i=i.substr(0,i.length-1));else continue;u+=r+":"+Base64(i)+"|"}}return u}function fitWidth(){fitTextbox(this)}function fitTextbox(n){var t;n=$(n),t=n.data("minWidth"),(t==null||typeof t=="undefined")&&(t=n.width(),n.data("minWidth",t));var i=n.parent().innerWidth()-n.next().outerWidth(!0)-2,r=getTextWidth(n.val())+3,u=Math.min(Math.max(t,r),i);n.width(u)}function toFitWidth(n){var t=n.get_element();fitTextbox(t)}function acSelected(n){var t=n.get_element();tryTriggerAutoFill(t.id)}function tryTriggerAutoFill(n){var t=n.substr(1);$(":text[AutoFill], textarea[AutoFill]","#editArea").each(function(){var n=","+this.getAttribute("AutoFill")+",";n.indexOf(","+t+",")>-1&&reFill(this.id)})}var curAcTextbox="",oriFormValues="",isPostBack=!1,processing=!1,lastKeydown=new Date;$(function(){var n,t;inPopup()&&$("html#edit").addClass("inpopup"),$(":text[maxlength], textarea[maxlength]","#editArea").filter("[acfid],[AutoFill]").change(function(){checkLength(this)}),$(":text[AutoFill], textarea[AutoFill]","#editArea").each(function(){for(var f=this.getAttribute("AutoFill"),t=f.split(","),i,n,u,r=0;r<t.length;r++){if(i=t[r],i=="SecLevel")n=$("#ddlSecLevel");else if(isNaN(i))continue;else n=$("#C"+i);n.length>0&&(u=n.is(":input")?"change":"click",n.bind(u,DoAutoFill(this.id,t)))}isAddMode==!0&&DoAutoFill(this.id,t).call()}),$(":text, textarea","#editArea").addClass($.browser.msie&&$.browser.version>9?"tbie":"tb"),$(":text[disrpt], textarea[disrpt]","#editArea").bind("change",function(){var n=$.trim($(this).val());n!=""&&$.get("ajax.aspx",{action:"chkRepeat",arg:$(this).attr("disrpt"),value:n},function(n){n!=""&&alert(n)})}),$("#editArea :text[acfid='UserName']").change(fitWidth).each(function(){this.onpaste=fitWidth,isAddMode==!1&&fitTextbox(this)}),$(":text").keydown(function(){var i=getKeyCode(),r,n,t;return i==38?AcShown()?!0:($(this).is("[ondblclick*='setNow']")&&$dp.hide(),n=$(this).closest("table.r").prevAll("table.r").find(":text,textarea").last(),n.is(".ck")?(t=CKEDITOR.instances[n[0].id],t&&t.focus()):n.focus().select(),!1):i==40?AcShown()?!0:($(this).is("[ondblclick*='setNow']")&&$dp.hide(),n=$(this).closest("table.r").nextAll("table.r").find(":text,textarea").first(),n.is(".ck")?(t=CKEDITOR.instances[n[0].id],t&&t.focus()):n.focus().select(),!1):i==13?(r=(new Date).getTime()-lastKeydown.getTime(),r>50?!0:AcShown()?!0:($(this).is("[ondblclick*='setNow']")&&$dp.hide(),n=$(this).closest("table.r").nextAll("table.r").find(":text,textarea").first(),n.is(".ck")?(t=CKEDITOR.instances[n[0].id],t&&t.focus()):n.focus().select(),!1)):(lastKeydown=new Date,!0)}),allowDrag&&($("#editArea .h").attr("title","拖动调整位置").css("cursor","move"),$("#editArea").sortable({items:".r",handle:".h",helper:"clone",opacity:.7,ghosting:!0,update:setLayout})),$(".r").hover(function(){$(this).is(".d")||$(this).addClass("rhover")},function(){$(this).removeClass("rhover")}).removeAttr("style"),$(":text[enchars]").each(function(){$(this).numeric({allow:$(this).attr("enchars")})}),setBaseString(),$("body").removeClass("waiting"),n=$("#editArea :text:first"),n.is("[ondblclick*='setNow']")||setTimeout(function(){n.select().focus()},0),t=Sys.WebForms.PageRequestManager.getInstance(),t.add_initializeRequest(showLoading),t.add_endRequest(function(){hideLoading(),isPostBack=!0})})