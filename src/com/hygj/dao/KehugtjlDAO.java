package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Kehu;
import com.hygj.bean.Kehugtjl;

@Repository
public class KehugtjlDAO extends BaseDAO {
	
	public List<Kehugtjl>getAll(){
		
		return getHt().find("from Kehugtjl");
	}
	
	public void add(Kehugtjl kehugtjl,int kehuId){
		
		Kehu kehu=getHt().get(Kehu.class,kehuId);
		kehugtjl.setKehu(kehu);
		getHt().save(kehugtjl);
		
	}
	
   public List<Kehugtjl>find(String jllb,int kehuId){
		String hql="select k from Kehugtjl k where kehu.kehuId=? or jllb like ?";
		Object[] values={kehuId,"%"+jllb+"%"};
		return getHt().find(hql, values);
	}
   
   public Kehugtjl getById(int gtjlId){
	   
		return getHt().get(Kehugtjl.class, gtjlId);
	}
   
   public int getnum(){
		
		return getHt().find("from Kehugtjl").size();
	}
   
   public List<Kehugtjl>sousuo(String key){
		String hql=" select k from Kehugtjl k where gtfs like ? or zhuti like ? or jllb like ? or gtjilu like ? or jgjilu like ?";
		Object[]values={"%"+key+"%","%"+key+"%","%"+key+"%","%"+key+"%","%"+key+"%"};
		return getHt().find(hql, values);
	}

}
