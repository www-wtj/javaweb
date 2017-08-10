package com.hygj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hygj.bean.Admin;

@Repository
public class AdminDAO extends BaseDAO {
	

	public List<Admin>getAdmin(){
		return getHt().find("from Admin");
		
	}
	
	public boolean getAdmin(Admin admin){
		String hql="select a from Admin a where adminName=? and adminPwd=?";
		Object[]values={admin.getAdminName(),admin.getAdminPwd()};
		boolean flag=getHt().find(hql, values).isEmpty();
		return flag;

	}
   

}
