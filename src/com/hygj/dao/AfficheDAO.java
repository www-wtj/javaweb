package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Affiche;
@Repository
public class AfficheDAO extends BaseDAO {
	
	public List<Affiche> lastAffice(){
		String hql="select a from Affiche a where rownum<2 order by afficheId desc";
		return getHt().find(hql);
	}
	
	public void add(Affiche affiche,String content,String pic){
		affiche.setContent(content);
		affiche.setPic(pic);
		getHt().save(affiche);
	}

}
