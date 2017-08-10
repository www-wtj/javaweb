package com.hygj.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.request.SessionScope;

import com.hygj.bean.Admin;
import com.hygj.bean.Quanxian;
import com.hygj.bean.Yuangong;
import com.hygj.service.QuanxianService;
import com.hygj.service.YuangongService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Namespace(value="/")
@Action
@Results(value={
		@Result(name="login",location="/WEB-INF/jsp/login.jsp"),
		@Result(name="succ",location="/WEB-INF/jsp/index.jsp"),
		@Result(name="fail",location="/WEB-INF/jsp/admin_fail.jsp"),
		@Result(name="show",location="/WEB-INF/jsp/yuangong/yuangong_show.jsp"),
		@Result(name="forupdate",location="/WEB-INF/jsp/yuangong/yuangong_update.jsp"),
		@Result(name="update",location="/WEB-INF/jsp/home.jsp"),
		@Result(name="formima",location="/WEB-INF/jsp/yuangong/yuangong_pwd.jsp"),
		@Result(name="quanxian",location="/WEB-INF/jsp/quanxian/quanxian_show.jsp"),
		@Result(name="quanxianUpdate",location="/WEB-INF/jsp/quanxian/quanxian_update.jsp"),
		@Result(name="modify",location="/WEB-INF/jsp/yuangong/yuangong_succ.jsp")
		
})
public class YuangongAction implements ModelDriven<Yuangong> {
	private Yuangong yuangong=new Yuangong();
	@Resource
    private YuangongService yuangongService=null;
	@Resource
	private QuanxianService quanxianService=null;
    

	public YuangongService getYuangongService() {
		return yuangongService;
	}

	public void setYuangongService(YuangongService yuangongService) {
		this.yuangongService = yuangongService;
	}
	
	

	public QuanxianService getQuanxianService() {
		return quanxianService;
	}

	public void setQuanxianService(QuanxianService quanxianService) {
		this.quanxianService = quanxianService;
	}

	public Yuangong getModel() {
		// TODO Auto-generated method stub
		return yuangong;
	}
	
	public String execute()throws Exception{
		List<Yuangong>yuangongs=yuangongService.getAll();
		ActionContext.getContext().put("yuangongs", yuangongs);
		return "login";
		
	}
	
   public String delu()throws Exception{
	  
	    String sys=yuangong.getYgName();
		List<Yuangong> yuangongs=yuangongService.login(yuangong);
		String result=""; 
		if(yuangongs.isEmpty()){
			result="fail";
		}
		else{
			yuangong=yuangongs.get(0);
			int id=yuangong.getYgId();
			Yuangong yuangonges=yuangongService.show(id);
			ActionContext actionContext=ActionContext.getContext();
			Map session=actionContext.getSession();
			session.put("sys", sys);
			session.put("id", id);
			session.put("yuangonges", yuangonges);
			result="succ";
		}
		return result;
		
	}
   
   public String show()throws Exception{
	   int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
	   Yuangong yuangongs=yuangongService.show(ygId);
       ActionContext.getContext().put("yuangongs", yuangongs);
      
		return "show";
		
	}
   
   public String forupdate()throws Exception{
	   int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
	   Yuangong yuangongs=yuangongService.show(ygId);
       ActionContext.getContext().put("yuangongs", yuangongs);
		return "forupdate";
		
	}
   
   public String update()throws Exception{
	   int bumenId=Integer.parseInt(ServletActionContext.getRequest().getParameter("bumenId"));
	   yuangongService.update(yuangong, bumenId);
		return "update";
		
	}
   public String formima()throws Exception{
		return "formima";
		
	}
   public String mima()throws Exception{

	   yuangongService.mima(yuangong);
		return "update";
		
	}
   
   public String quanxian()throws Exception{
	   int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
	   Yuangong yuangongs=yuangongService.show(ygId);
       ActionContext.getContext().put("yuangongs", yuangongs);
       List<Quanxian>quanxians=quanxianService.getAll();
       ActionContext.getContext().put("quanxians", quanxians);
		return "quanxian";
		
	}
   
   public String quanxianUpdate()throws Exception{
	   List<Quanxian>quanxians=quanxianService.getAll();
       ActionContext.getContext().put("quanxians", quanxians);
       List<Yuangong>yuangongs=yuangongService.getAll();
	   ActionContext.getContext().put("yuangongs", yuangongs);
		return "quanxianUpdate";
		
	}
   
   public String modify()throws Exception{
	   int qxId=Integer.parseInt(ServletActionContext.getRequest().getParameter("qxId"));
	   yuangongService.modify(yuangong, qxId);
	   
		return "modify";
		
	}
   

}
