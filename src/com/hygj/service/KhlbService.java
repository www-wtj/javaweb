package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Khlb;
import com.hygj.dao.KhlbDAO;

@Service
public class KhlbService {
	@Resource
	private KhlbDAO khlbDAO=null;

	public KhlbDAO getKhlbDAO() {
		return khlbDAO;
	}

	public void setKhlbDAO(KhlbDAO khlbDAO) {
		this.khlbDAO = khlbDAO;
	}
	
	public List<Khlb>getAll(){
		return khlbDAO.getAll();
	}
	
	

}
