package com.hygj.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.hygj.bean.Admin;
import com.hygj.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Namespace(value="/")
@Action
@Results(value={
		@Result(name="login",location="/WEB-INF/jsp/login.jsp"),
		@Result(name="succ",location="/WEB-INF/jsp/index.jsp"),
		@Result(name="fail",location="/WEB-INF/jsp/admin_fail.jsp"),
		@Result(name="my",location="/WEB-INF/jsp/user_show.jsp"),
		
})
public class AdminAction implements ModelDriven<Admin>{
	private Admin admin=new Admin();
	@Autowired
	private AdminService adminService=null;
	
	
	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}
	
	public String execute()throws Exception{
		List<Admin>admins=adminService.getAdmin();
		ActionContext.getContext().put("admins", admins);
		return "login";
		
	}
	
   public String delu()throws Exception{
	    String sys=admin.getAdminName();
		boolean flag=adminService.getAdmin(admin);
		String result="fail"; 
		if(flag==false){
			ActionContext actionContext=ActionContext.getContext();
			Map session=actionContext.getSession();
			session.put("sys", sys);
			
			result="succ";
		}
		return result;
		
	}
   
   public String my()throws Exception{
		
		return "my";
		
	}


}
