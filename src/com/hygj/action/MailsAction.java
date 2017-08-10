package com.hygj.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.hygj.bean.Mails;
import com.hygj.bean.Yuangong;
import com.hygj.service.MailsService;
import com.hygj.service.YuangongService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Namespace(value="/")
@Action
@Results(value={
		@Result(name="foradd",location="/WEB-INF/jsp/mails/mails_add.jsp"),
		@Result(name="add",location="/WEB-INF/jsp/home.jsp"),
		@Result(name="show",location="/WEB-INF/jsp/mails/mails_show.jsp"),
		@Result(name="num",location="/WEB-INF/jsp/mails/mails_num.jsp"),
		@Result(name="weidu",location="/WEB-INF/jsp/mails/mails_weidu.jsp"),
		@Result(name="fasong",location="/WEB-INF/jsp/mails/mails_fasong.jsp"),
		@Result(name="details",location="/WEB-INF/jsp/mails/mails_details.jsp"),
})
public class MailsAction implements ModelDriven<Mails> {
	
	private Mails mails=new Mails();
	@Resource
	private MailsService mailsService=null;
	@Resource
	private YuangongService yuangongService=null;
	

	public MailsService getMailsService() {
		return mailsService;
	}

	public void setMailsService(MailsService mailsService) {
		this.mailsService = mailsService;
	}
	
	

	public YuangongService getYuangongService() {
		return yuangongService;
	}

	public void setYuangongService(YuangongService yuangongService) {
		this.yuangongService = yuangongService;
	}

	public Mails getModel() {
		// TODO Auto-generated method stub
		return mails;
	}
	
	public String execute()throws Exception{
		List<Yuangong>yuangongs=yuangongService.getAll();
		ActionContext.getContext().put("yuangongs", yuangongs);
		return "foradd";
		
	}
	
	public String add()throws Exception{
		int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
		mailsService.add(mails, ygId);
		return "add";
		
	}
	
	public String show()throws Exception{
		int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
		Yuangong yuangongs=yuangongService.show(ygId);
		String back=yuangongs.getYouxiang();
		int num=mailsService.num(back);
		int weidu=mailsService.weidu(back);
		int fasong=mailsService.fasong(ygId);
		ActionContext.getContext().put("num", num);
		ActionContext.getContext().put("weidu", weidu);
		ActionContext.getContext().put("fasong", fasong);
		ActionContext.getContext().put("back", back);
		return "show";
		
	}
	
	public String num()throws Exception{
		String back=ServletActionContext.getRequest().getParameter("back");
		List<Mails> mailes=mailsService.getNum(back);
		ActionContext.getContext().put("mailes", mailes);
		return "num";
		
	}
	

	public String weidu()throws Exception{
		String back=ServletActionContext.getRequest().getParameter("back");
		List<Mails> mailes=mailsService.getWeidu(back);
		ActionContext.getContext().put("mailes", mailes);
		return "weidu";
		
	}
	

	public String fasong()throws Exception{
		int ygId=Integer.parseInt(ServletActionContext.getRequest().getParameter("ygId"));
		List<Mails> mailes=mailsService.getFasong(ygId);
		ActionContext.getContext().put("mailes", mailes);
		return "fasong";
		
	}
	
	public String details()throws Exception{
		int mailsId=Integer.parseInt(ServletActionContext.getRequest().getParameter("mailsId"));
		int state=Integer.parseInt(ServletActionContext.getRequest().getParameter("state"));
		System.out.println(state);
		if(state==0){
			mailsService.update(mailsId);
		}
		Mails mailes=mailsService.getById(mailsId);
		ActionContext.getContext().put("mailes", mailes);
		return "details";
		
	}



}
