package com.hygj.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.hygj.bean.Kehu;
import com.hygj.bean.Kehugtjl;
import com.hygj.service.KehuService;
import com.hygj.service.KehugtjlService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Namespace(value="/")
@Action
@Results(value={
		@Result(name="foradd",location="/WEB-INF/jsp/kehugtjl/kehugtjl_add.jsp"),
		@Result(name="add",location="/WEB-INF/jsp/home.jsp"),
		@Result(name="show",location="/WEB-INF/jsp/kehugtjl/kehugtjl_show.jsp"),
		@Result(name="forfind",location="/WEB-INF/jsp/kehugtjl/kehugtjl_find.jsp"),
		@Result(name="fail",location="/WEB-INF/jsp/kehugtjl/kehugtjl_fail.jsp"),
		@Result(name="details",location="/WEB-INF/jsp/kehugtjl/kehugtjl_details.jsp"),
})
public class KehugtjlAction implements ModelDriven<Kehugtjl> {
	private Kehugtjl kehugtjl=new Kehugtjl();
	@Resource
	private KehugtjlService kehugtjlService=null;
	@Resource
	private KehuService kehuService=null;

	public KehugtjlService getKehugtjlService() {
		return kehugtjlService;
	}

	public void setKehugtjlService(KehugtjlService kehugtjlService) {
		this.kehugtjlService = kehugtjlService;
	}
    
	
	
	
	public KehuService getKehuService() {
		return kehuService;
	}

	public void setKehuService(KehuService kehuService) {
		this.kehuService = kehuService;
	}

	public Kehugtjl getModel() {
		// TODO Auto-generated method stub
		return kehugtjl;
	}
	
	public String foradd()throws Exception{
		List<Kehu>kehus=kehuService.getAll();
		ActionContext.getContext().put("kehus", kehus);
		return "foradd";
		
	}
	
	public String add()throws Exception{
		int kehuId=Integer.parseInt(ServletActionContext.getRequest().getParameter("kehuId"));
		
		kehugtjlService.add(kehugtjl, kehuId);
		return "add";
		
	}
	
	public String show()throws Exception{
		List<Kehugtjl>kehugtjls=kehugtjlService.getAll();
		ActionContext.getContext().put("kehugtjls", kehugtjls);
		return "show";
		
	}
	
	public String forfind()throws Exception{
		List<Kehu>kehus=kehuService.getAll();
		ActionContext.getContext().put("kehus", kehus);
		return "forfind";
		
	}
	
	public String find()throws Exception{
		int kehuId=Integer.parseInt(ServletActionContext.getRequest().getParameter("kehuId"));
		String jllb=ServletActionContext.getRequest().getParameter("jllb");
		if(jllb==""){
		   jllb="!--?";
		}
		List<Kehugtjl>kehugtjls=kehugtjlService.find(jllb, kehuId);
		String result="";
		if(kehugtjls.isEmpty()){
			result="fail";
		}else{
			ActionContext.getContext().put("kehugtjls", kehugtjls);
			result="show";
		}
		
		
		return result;
		
	}
	
	public String details()throws Exception{
		int gtjlId=Integer.parseInt(ServletActionContext.getRequest().getParameter("gtjlId"));
		Kehugtjl kehugtjls=kehugtjlService.getById(gtjlId);
		ActionContext.getContext().put("kehugtjls", kehugtjls);
		return "details";
		
	}
	

}
