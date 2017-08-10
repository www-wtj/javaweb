package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Kehu;
import com.hygj.bean.Kehugtjl;
import com.hygj.dao.KehugtjlDAO;

@Service
public class KehugtjlService {
	@Resource
	private KehugtjlDAO kehugtjlDAO=null;

	public KehugtjlDAO getKehugtjlDAO() {
		return kehugtjlDAO;
	}

	public void setKehugtjlDAO(KehugtjlDAO kehugtjlDAO) {
		this.kehugtjlDAO = kehugtjlDAO;
	}
	
	public List<Kehugtjl>getAll(){
		return kehugtjlDAO.getAll();
	}
	
	public void add(Kehugtjl kehugtjl,int kehuId){
		kehugtjlDAO.add(kehugtjl, kehuId);
	}
	
	public List<Kehugtjl>find(String jllb,int kehuId){
		return kehugtjlDAO.find(jllb, kehuId);
	}
	
	public Kehugtjl getById(int gtjlId){
		
		return kehugtjlDAO.getById(gtjlId);
	}
	
	 public int getnum(){
		 return kehugtjlDAO.getnum();
	 }
	 public List<Kehugtjl> sousuo(String key){
		 return kehugtjlDAO.sousuo(key);
	 }

}
