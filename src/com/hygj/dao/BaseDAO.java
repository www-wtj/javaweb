package com.hygj.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class BaseDAO {
    @Resource
	private SessionFactory sf = null;
	private HibernateTemplate ht = null;

	public SessionFactory getSf() {
		return sf;
	}

	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	public HibernateTemplate getHt() {
		ht=new HibernateTemplate(sf);
		return ht;
	}

}
