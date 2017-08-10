package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Mails;
import com.hygj.bean.Yuangong;

@Repository
public class MailsDAO extends BaseDAO{
	
	public void add(Mails mails,int ygId){
		Yuangong yuangong=getHt().get(Yuangong.class, ygId);
		String[] backs=mails.getBack().split(";");
		for(int i=0;i<backs.length;i++){
			String back=backs[i];
			mails.setBack(back);
			mails.setYuangong(yuangong);
			getHt().save(mails);
		}
		
	}
	//总邮件
	public int num(String back){
		String hql="select m from Mails m where back=?";
		Object[] values={back};
		return getHt().find(hql, values).size();
	}
	
	public List<Mails> getNum(String back){
		String hql="select m from Mails m where back=?";
		Object[] values={back};
		return getHt().find(hql, values);
	}
	//未读邮件
	public int weidu(String back){
		String hql="select m from Mails m where state=0 and back=?";
		Object[] values={back};
		return getHt().find(hql, values).size();
	}
	
	public List<Mails> getWeidu(String back){
		String hql="select m from Mails m where state=0 and back=?";
		Object[] values={back};
		return getHt().find(hql, values);
	}
	/**
	 * 发送邮件
	 * @param ygId
	 * @return
	 */
	public int fasong(int ygId){
		String hql="select m from Mails m where  yuangong.ygId=?";
		Object[] values={ygId};
		return getHt().find(hql, values).size();
	}
	
	public List<Mails> getFasong(int ygId){
		String hql="select m from Mails m where  yuangong.ygId=?";
		Object[] values={ygId};
		return getHt().find(hql, values);
	}
	
	public Mails getById(int mailsId){
		return getHt().get(Mails.class, mailsId);
		
	}
	
	public void update(int mailsId){
		String hql="update Mails set state=1 where mailsId=?";
		Object[]values={mailsId};
		getHt().bulkUpdate(hql, values);
	}
	
	
	
	

}
