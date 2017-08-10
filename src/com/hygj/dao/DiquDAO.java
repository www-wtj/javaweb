package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Diqu;
@Repository
public class DiquDAO extends BaseDAO{
	
	public List<Diqu>getall(){
		return getHt().find("from Diqu");
	}

}
