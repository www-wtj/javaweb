package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Mails;
import com.hygj.dao.MailsDAO;

@Service
public class MailsService {
	@Resource
	private MailsDAO mailsDAO=null;

	public MailsDAO getMailsDAO() {
		return mailsDAO;
	}

	public void setMailsDAO(MailsDAO mailsDAO) {
		this.mailsDAO = mailsDAO;
	}

	public void add(Mails mails,int ygId){
		mailsDAO.add(mails, ygId);
	}
	
	public int num(String back){
		return mailsDAO.num(back);
	}
	
	public List<Mails> getNum(String back){
		return mailsDAO.getNum(back);
	}
	
	public int weidu(String back){
		return mailsDAO.weidu(back);
	}
	
	public List<Mails> getWeidu(String back){
		return mailsDAO.getWeidu(back);
	}
	
	public int fasong(int ygId){
		return mailsDAO.fasong(ygId);
	}
	
	public List<Mails> getFasong(int ygId){
		return mailsDAO.getFasong(ygId);
	}
	
	public Mails getById(int mailsId){
		return mailsDAO.getById(mailsId);
	}
	
	public void update(int mailsId){
		mailsDAO.update(mailsId);
	}
}
