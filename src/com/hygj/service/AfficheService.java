package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Affiche;
import com.hygj.dao.AfficheDAO;

@Service
public class AfficheService {
	@Resource
	private AfficheDAO afficheDAO=null;

	public AfficheDAO getAfficheDAO() {
		return afficheDAO;
	}

	public void setAfficheDAO(AfficheDAO afficheDAO) {
		this.afficheDAO = afficheDAO;
	}
	public List<Affiche> lastAffice(){
		return afficheDAO.lastAffice();
	}
	
	public void add(Affiche affiche,String content,String pic){
		afficheDAO.add(affiche, content, pic);
	}
	

}
