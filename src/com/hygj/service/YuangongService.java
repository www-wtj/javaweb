package com.hygj.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hygj.bean.Yuangong;
import com.hygj.dao.YuangongDAO;

@Service
public class YuangongService {
	@Resource
	private YuangongDAO yuangongDAO=null;

	public YuangongDAO getYuangongDAO() {
		return yuangongDAO;
	}

	public void setYuangongDAO(YuangongDAO yuangongDAO) {
		this.yuangongDAO = yuangongDAO;
	}
	
	public List<Yuangong>getAll(){
		return yuangongDAO.getAll();
	}
	
	public List<Yuangong> login(Yuangong yuangong){
		return yuangongDAO.login(yuangong);
	}
	
	public Yuangong show(int ygId){
		return yuangongDAO.show(ygId);
	}
	
	public void update(Yuangong yuangong,int bumenId){
		yuangongDAO.update(yuangong, bumenId);
	}
	
	public void mima(Yuangong yuangong){
		yuangongDAO.mima(yuangong);
	}
	
	public void modify(Yuangong yuangong,int qxId){
		 yuangongDAO.modify(yuangong, qxId);
	}
	

}
