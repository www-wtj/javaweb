function showPageUrl(){var r=$f("currentUrl"),u,n,t,i;if(r!=null){try{u=window.dialogArguments||opener,n=u.parent.mainFrame.location.href}catch(r){$("#faq .pCurrentUrl").hide();return}t=n,t.indexOf("?")>-1&&(t=t.substr(0,t.indexOf("?"))),i=t.lastIndexOf("/");switch($("#urlMode").val()){case"Full":n=n.substr(0,i+1)+"default.aspx?target="+encodeUrl(n.substr(i+1));break;case"Sidebar":n=n.substr(0,i+1)+"datacenter.aspx?target="+encodeUrl(n.substr(i+1))}$(r).attr("href",n).text(n)}}function setHeight(){var t=$f("header"),i=$f("footer"),n;window.name=="mainFrame"?n=document.documentElement.clientHeight-t.offsetHeight-i.offsetHeight-12:(n=document.documentElement.clientHeight-t.offsetHeight-i.offsetHeight-16,n<=0&&(n=380)),$f("content").style.height=n+"px"}function MaximizeWindow(){moveTo(0,0),resizeTo(screen.availWidth,screen.availHeight)}function setBtnFullWin(){var n=window.name=="fullWin";n&&$("#guide,#about").hide(),$f("fullWindow").style.display=n?"none":""}function setAnchorBack(){$("#aBack").css("display",referrerIs("help.aspx")?"":"none")}function to(n){if(window.name=="mainFrame")location=n;else{var t=window.dialogArguments||opener;try{t.parent.mainFrame.location=n,top.close()}catch(i){}}}function copy_clip(){return window.clipboardData&&window.clipboardData.setData("Text",$("#cmdtext").text()),!1}$(function(){setHeight(),setAnchorBack(),showPageUrl(),setBtnFullWin(),window.onresize=setHeight,window.onload=setHeight,window.name=="mainFrame"&&($("#footer").hide(),$("body").css("background-color","#fafafa"),$("#mainDiv").css("padding","0 8px 6px"))})