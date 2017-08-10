package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Diqu;
import com.hygj.dao.DiquDAO;

@Service
public class DiquService {
	@Resource
	private DiquDAO diquDAO=null;

	public DiquDAO getDiquDAO() {
		return diquDAO;
	}

	public void setDiquDAO(DiquDAO diquDAO) {
		this.diquDAO = diquDAO;
	}
	
	public List<Diqu>getall(){
		return diquDAO.getall();
	}
	
	

}
