function InitList(){var n=$("#icon");n.length==0&&(n=$("<img src='images/format.gif' id='icon' style='display:none' alt='自定义显示格式' title='自定义显示格式' />").appendTo("#up").click(function(){var n=$(this).data("tid");n&&($("#curTempletId").val(n),__doPostBack("btnChgFormat",n))})),n.hide(),$("#up div[class^='item'][tid]").hover(function(){if(HasPanelShowing())return!1;var t=$(this).offset();n.css({left:t.left+$(this).width()-20,top:t.top+3}).data("tid",$(this).attr("tid")).fadeIn(300)},function(){within(this,getEvent())||n.hide()}),$("#up .item a[pict].title").mouseover(function(){var r=this.getAttribute("pict");if(r!=""){var u=getEvent(),n=u.clientX+5,t=u.clientY+5,i=100;t+i>document.documentElement.clientHeight&&(t=Math.max(0,t-i)),n+i>document.documentElement.clientWidth&&(n=Math.max(0,n-i)),n+=$(window).scrollLeft(),t+=$(window).scrollTop(),$("#prePict").css({"background-image":"url(images/loading.gif)",left:n+"px",top:t+"px"}).fadeIn("normal"),$("#forLoad").attr("src","Thumb.ashx?src="+r)}}).mousemove(function(){var r=getEvent(),n=r.clientX+5,t=r.clientY+5,i=100;t+i>document.documentElement.clientHeight&&(t=Math.max(0,t-i)),n+i>document.documentElement.clientWidth&&(n=Math.max(0,n-i)),n+=$(window).scrollLeft(),t+=$(window).scrollTop(),$("#prePict").css({left:n+"px",top:t+"px"})}).mouseout(function(){$("#prePict").hide()}),ColorBoxPhoto()}function InitEditor(){MakeEditor("textarea.ck","Normal","210px",!1,!1)}function updateEditor(){var n=$("#fmt_rblMode :radio[value='Custom']").is(":checked");n&&UpdateEditorElement()}function setHtmlArea(){var n=$("#fmt_rblMode :radio[value='Custom']").is(":checked");n?($("#fmt_divHtml").css("display","block"),$("#fmt_popup").width(610),$("#rtd").removeClass("hidden")):($("#fmt_divHtml").css("display","none"),$("#fmt_popup").width(500),$("#rtd").addClass("hidden"))}function fmtsChanged(){switch($("#ddlFmts").val()){case"BarCode_1D":$(".forBarcode,#ddlSize").removeClass("hide");break;case"BarCode_2D":$(".forBarcode").addClass("hide"),$("#ddlSize").removeClass("hide");break;default:$(".forBarcode,#ddlSize").addClass("hide")}showTag()}function rangeChanged(n){var t=$(n).val();t=="Field"?($("#fmt_ddlVars,#spanQuery").addClass("hide"),$("#fmt_ddlfs,#ddlFmts").removeClass("hide"),fmtsChanged()):t=="Variable"?($("#fmt_ddlVars").removeClass("hide"),$("#fmt_ddlfs,#ddlFmts,#spanQuery").addClass("hide")):($("#spanQuery").removeClass("hide"),$("#fmt_ddlfs,#ddlFmts,#fmt_ddlVars").addClass("hide")),fsChanged()}function fsChanged(){$("#ddlFmts").val(""),fmtsChanged()}function showTag(){var t,r=$("#range").val(),i,n;if($("#range").val()=="Field"){i=$("#fmt_ddlfs").val();switch($("#ddlFmts").val()){case"":t="["+i+"]";break;case"BarCode_1D":n=$("#ddlSize").val(),n=n=="medium"?"":"|"+n,t="[_{"+$("#ddlBarCodes").val()+n+($("#cbLabel").is(":checked")?"|1":"")+"}"+i+"]";break;case"BarCode_2D":n=$("#ddlSize").val(),n=n=="medium"?"":"|"+n,t="[_{QrCode"+n+"}"+i+"]";break;default:t="[_"+i+"]"}}else t=r=="Variable"?$("#fmt_ddlVars").val():$("#fmt_ddlQuerys").val();$("#fieldTag").val(t).fadeOut(100).fadeIn(300)}$(function(){top.needRefreshOverview==!0&&(top.needRefreshOverview=null,location.reload(!0)),document.onkeydown=function(){var t=getEvent(),i,n;if($(t.srcElement||t.target).is("input"))return!0;i=t.keyCode||t.which,n=null;switch(i){case 37:case 33:n=$f("btnPrevious");break;case 39:case 34:n=$f("btnNext");break;case 36:n=$f("btnFirst");break;case 35:n=$f("btnLast")}return n&&!n.disabled?(__doPostBack(n.id,""),!1):!0},$("#loading").fixed({position:"center"}).show()})