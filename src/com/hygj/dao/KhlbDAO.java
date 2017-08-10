package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Khlb;

@Repository
public class KhlbDAO extends BaseDAO {
	
	public List<Khlb>getAll(){
		return getHt().find("from Khlb");
	}

}
