package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Quanxian;
import com.hygj.dao.QuanxianDAO;

@Service
public class QuanxianService {
	@Resource
	private QuanxianDAO quanxianDAO=null;

	public QuanxianDAO getQuanxianDAO() {
		return quanxianDAO;
	}

	public void setQuanxianDAO(QuanxianDAO quanxianDAO) {
		this.quanxianDAO = quanxianDAO;
	}
	
	public List<Quanxian> getAll(){
		return quanxianDAO.getAll();
	}
	

}
