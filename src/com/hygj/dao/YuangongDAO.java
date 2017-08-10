package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Yuangong;
@Repository
public class YuangongDAO extends BaseDAO{
	

	public List<Yuangong>getAll(){
		return getHt().find("from Yuangong");
		
	}
	
	public List<Yuangong> login(Yuangong yuangong){
		String hql="select y from Yuangong y where ygName=? and ygMima=?";
	
		Object[]values={yuangong.getYgName(),yuangong.getYgMima()};
		return getHt().find(hql, values);
          
	}
	
	public Yuangong show(int ygId){
		
		return getHt().get(Yuangong.class, ygId);

	}
	
	public void update(Yuangong yuangong,int bumenId){
		String hql="update Yuangong set bumen.bumenId=?,ygName=?,ygDianhua=?,ygDizhi=?, wenti=?,daan=?,youbian=? where ygId=?";
		Object[]values={bumenId,yuangong.getYgName(),yuangong.getYgDianhua(),yuangong.getYgDizhi(),yuangong.getWenti(),yuangong.getDaan(),yuangong.getYoubian(),yuangong.getYgId()};
		getHt().bulkUpdate(hql, values);

	}
	
	public void mima(Yuangong yuangong){
		String hql="update Yuangong set ygMima=? where ygId=?";
		Object[]values={yuangong.getYgMima() ,yuangong.getYgId()};
		getHt().bulkUpdate(hql, values);
	}
	
	public void modify(Yuangong yuangong,int qxId){
		String hql="update Yuangong set quanxian.qxId=? where ygId=?";
		Object[]values={qxId,yuangong.getYgId()};
		getHt().bulkUpdate(hql, values);

	}

}
