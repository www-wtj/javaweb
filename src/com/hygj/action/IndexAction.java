package com.hygj.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.hygj.bean.Affiche;
import com.hygj.bean.Kehu;
import com.hygj.bean.Kehugtjl;
import com.hygj.service.AfficheService;
import com.hygj.service.KehuService;
import com.hygj.service.KehugtjlService;
import com.opensymphony.xwork2.ActionContext;
@Controller
@Namespace(value="/")
@Action
@Results(value={
		@Result(name="index",location="/WEB-INF/jsp/index.jsp"),
		@Result(name="topbar",location="/WEB-INF/jsp/topbar.jsp"),
		@Result(name="sidebar",location="/WEB-INF/jsp/sidebar.jsp"),
		@Result(name="home",location="/WEB-INF/jsp/home.jsp"),
		@Result(name="numbar",location="/WEB-INF/jsp/numbar.jsp"),
		@Result(name="sousuo",location="/WEB-INF/jsp/sousuo.jsp"),
		@Result(name="kehushow",location="/WEB-INF/jsp/kehu/kehu_show.jsp"),
		@Result(name="kehugtjlshow",location="/WEB-INF/jsp/kehugtjl/kehugtjl_show.jsp"),
		@Result(name="sousuobar",location="/WEB-INF/jsp/sousuobar.jsp"),
		@Result(name="text",location="/WEB-INF/jsp/text.jsp"),
})
public class IndexAction {
	@Resource
	private AfficheService afficheService=null;
	@Resource
	private KehuService kehuservice=null;
	@Resource
	private KehugtjlService kehugtjlService=null;
	
	
	public AfficheService getAfficheService() {
		return afficheService;
	}
	public void setAfficheService(AfficheService afficheService) {
		this.afficheService = afficheService;
	}
	
	
	public KehuService getKehuservice() {
		return kehuservice;
	}
	public void setKehuservice(KehuService kehuservice) {
		this.kehuservice = kehuservice;
	}
	
	public String execute()throws Exception{
		
		return "index";
		
	}
	public String topbar()throws Exception{
		String sys=ServletActionContext.getRequest().getParameter("sys");
		ActionContext.getContext().put("sys", sys);
		return "topbar";
		
	}
	
	public String sidebar()throws Exception{
		return "sidebar";
		
	}
	
	public String home()throws Exception{
		List<Affiche>affiches=afficheService.lastAffice();
		ActionContext.getContext().put("affiches", affiches);
		return "home";
		
	}
	
	public String numbar()throws Exception{
		int kehunum=kehuservice.getnum();
		ActionContext.getContext().put("kehunum", kehunum);
		int kehugtjlnum=kehugtjlService.getnum();
		ActionContext.getContext().put("kehugtjlnum", kehugtjlnum);
		return "numbar";
		
	}
	
   public String forsousuo()throws Exception{
		
		return "sousuo";
		
	}
	
	public String sousuo()throws Exception{
		int table=Integer.parseInt(ServletActionContext.getRequest().getParameter("table"));
		String key=ServletActionContext.getRequest().getParameter("key"); 
		String result="";
		if(table==1){
			List<Kehu>kehus=kehuservice.sousuo(key);
			ActionContext.getContext().put("kehus", kehus);
			result="kehushow";
		}
		if(table==2){
			List<Kehugtjl>kehugtjls=kehugtjlService.sousuo(key);
			ActionContext.getContext().put("kehugtjls", kehugtjls);
			result="kehugtjlshow";
		}
		
		return result;
		
	}
	
	
	public String sousuobar()throws Exception{
			
			return "sousuobar";
			
	}
	public String text()throws Exception{
			
			return "text";
			
	}

}
