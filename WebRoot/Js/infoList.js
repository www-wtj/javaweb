function ListUpdated(){$("div.item").mouseover(function(){$(".footer input[type='image']",this).removeClass("hide")}).mouseout(function(){$(".footer input[type='image']",this).addClass("hide")}),setTags("#listArea .tag a"),$(".author a").click(function(){$("#filter").val("Own:"+$(this).attr("rel")),__doPostBack("btnFilter","")})}function setTags(n){$(n).click(showTag)}function showTag(){$("#filter").val("Tag:"+$(this).text()),__doPostBack("btnFilter","")}function timeChanged(){$("#s_rbLimit").attr("checked",!0),WdatePicker({dateFmt:"yyyy-MM-dd",onpicked:toNext})}function toNext(){var n="s_tbTime2";this.id!=n&&$f(n).focus()}function toPage(n){$("#curPageIndex").val(n),__doPostBack("btnFilter","Page")}function doFilter(n){return $("#filter").val(n),__doPostBack("btnFilter",""),!1}function PreDel(){return confirm("确定删除吗？")}function toSearch(){ShowPop("s_popup",!0),$("#s_tbKeyword").focus()}$(function(){$("div.titleBlock").corner("3px"),setTags("#divTags a");var n=Sys.WebForms.PageRequestManager.getInstance();n.add_initializeRequest(showLoading),n.add_endRequest(hideLoading)})