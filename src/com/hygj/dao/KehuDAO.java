package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Diqu;
import com.hygj.bean.Kehu;
import com.hygj.bean.Khlb;
import com.hygj.bean.Yuangong;
@Repository
public class KehuDAO extends BaseDAO {
	
	public void add(Kehu kehu,int ygId,int diquId,int khlbId){
		Yuangong yuangong=getHt().get(Yuangong.class, ygId);
		Diqu diqu=getHt().get(Diqu.class, diquId);
		Khlb khlb=getHt().get(Khlb.class, khlbId);
		kehu.setYuangong(yuangong);
		kehu.setDiqu(diqu);
		kehu.setKhlb(khlb);
		getHt().save(kehu);
		
	}
	
	public List<Kehu>getAll(){
		return getHt().find("from Kehu");
	}
	
	public List<Kehu>find(String kehuName,int khlbId){
		String hql=" select k from Kehu k where kehuName like ? or khlb.khlbId=?";
		Object[]values={"%"+kehuName+"%",khlbId};
		return getHt().find(hql, values);
	}
	
	public Kehu getById(int kehuId){
		return getHt().get(Kehu.class, kehuId);
	}
	
	public int getnum(){
		return getHt().find("from Kehu").size();
	}
	
	public List<Kehu>sousuo(String key){
		String hql=" select k from Kehu k where kehuName like ? or kehuDizhi like ? or kehuWangzhan like ? or kehuLianxiren like ? ";
		Object[]values={"%"+key+"%","%"+key+"%","%"+key+"%","%"+key+"%",};
		return getHt().find(hql, values);
	}

}
