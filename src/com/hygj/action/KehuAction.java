package com.hygj.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.hygj.bean.Diqu;
import com.hygj.bean.Kehu;
import com.hygj.bean.Khlb;
import com.hygj.bean.Yuangong;
import com.hygj.service.DiquService;
import com.hygj.service.KehuService;
import com.hygj.service.KhlbService;
import com.hygj.service.YuangongService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Namespace(value="/")
@Action
@Results(value={
	@Result(name="foradd",location="/WEB-INF/jsp/kehu/kehu_add.jsp"),
	@Result(name="add",location="/WEB-INF/jsp/home.jsp"),
	@Result(name="show",location="/WEB-INF/jsp/kehu/kehu_show.jsp"),
	@Result(name="forfind",location="/WEB-INF/jsp/kehu/kehu_find.jsp"),
	@Result(name="details",location="/WEB-INF/jsp/kehu/kehu_details.jsp"),
})
public class KehuAction implements ModelDriven<Kehu> {
	private Kehu kehu=new Kehu();
	@Resource
	private KehuService kehuService=null;
	@Resource
	private DiquService diquService=null;
	@Resource
	private KhlbService khlbService=null;
	@Resource
	private YuangongService yuangongService=null;

	
	public KehuService getKehuService() {
		return kehuService;
	}

	public void setKehuService(KehuService kehuService) {
		this.kehuService = kehuService;
	}

	public DiquService getDiquService() {
		return diquService;
	}

	public void setDiquService(DiquService diquService) {
		this.diquService = diquService;
	}
	
	

	public KhlbService getKhlbService() {
		return khlbService;
	}

	public void setKhlbService(KhlbService khlbService) {
		this.khlbService = khlbService;
	}
	
	

	public YuangongService getYuangongService() {
		return yuangongService;
	}

	public void setYuangongService(YuangongService yuangongService) {
		this.yuangongService = yuangongService;
	}

	public Kehu getModel() {
		// TODO Auto-generated method stub
		return kehu;
	}
	
	public String foradd()throws Exception{
		List<Diqu>diqu=diquService.getall();
		List<Khlb>khlb=khlbService.getAll();
		List<Yuangong> yg=yuangongService.getAll();
		ActionContext.getContext().put("diqu", diqu);
		ActionContext.getContext().put("khlb", khlb);
		ActionContext.getContext().put("yg", yg);
		return "foradd";
		
	}
	
	public String add()throws Exception{
		
		int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
		
		
		int diquId=Integer.parseInt(ServletActionContext.getRequest().getParameter("diquId"));
		
		int khlbId=Integer.parseInt(ServletActionContext.getRequest().getParameter("khlbId"));
		
		kehuService.add(kehu, ygId, diquId, khlbId);
		return "add";
		
	}
	
	public String show()throws Exception{
		List<Kehu>kehus=kehuService.getAll();
		ActionContext.getContext().put("kehus", kehus);
		return "show";
		
	}
	
	public String forfind()throws Exception{
		List<Khlb>khlb=khlbService.getAll();
		ActionContext.getContext().put("khlb", khlb);
		return "forfind";
		
	}
	
	public String find()throws Exception{
		int khlbId=Integer.parseInt(ServletActionContext.getRequest().getParameter("khlbId"));
		String kehuName=ServletActionContext.getRequest().getParameter("kehuName");
		if(kehuName==""){
			kehuName="!--?";
		}
		List<Kehu>kehus=kehuService.find(kehuName, khlbId);
		ActionContext.getContext().put("kehus", kehus);
		return "show";
		
	}
	
	public String details()throws Exception{
		int kehuId=Integer.parseInt(ServletActionContext.getRequest().getParameter("kehuId"));
		Kehu kehus=kehuService.getById(kehuId);
		ActionContext.getContext().put("kh", kehus);
		return "details";
		
	}


}
