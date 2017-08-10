package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Kehu;
import com.hygj.dao.KehuDAO;

@Service
public class KehuService {
	@Resource
	private KehuDAO kehuDAO=null;

	public KehuDAO getKehuDAO() {
		return kehuDAO;
	}

	public void setKehuDAO(KehuDAO kehuDAO) {
		this.kehuDAO = kehuDAO;
	}
	
	public void add(Kehu kehu,int ygId,int diquId,int khlbId){
		kehuDAO.add(kehu, ygId, diquId, khlbId);
	}
	public List<Kehu>getAll(){
		return kehuDAO.getAll();
	}
	
	public List<Kehu>find(String kehuName,int khlbId){
		return kehuDAO.find(kehuName, khlbId);
	}
	
	public Kehu getById(int kehuId){
		return kehuDAO.getById(kehuId);
	}
	
	public int getnum(){
		return kehuDAO.getnum();
	}
	
	public List<Kehu>sousuo(String key){
		return kehuDAO.sousuo(key);
	}
		

}
