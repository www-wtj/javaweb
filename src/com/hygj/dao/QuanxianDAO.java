package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Quanxian;

@Repository
public class QuanxianDAO extends BaseDAO {
	
	public List<Quanxian> getAll(){
		return getHt().find("from Quanxian");
	}

}
