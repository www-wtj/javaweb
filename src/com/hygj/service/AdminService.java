package com.hygj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hygj.bean.Admin;
import com.hygj.dao.AdminDAO;
@Service
public class AdminService {
	@Autowired
	private AdminDAO adminDao=null;
	

	public AdminDAO getAdminDao() {
		return adminDao;
	}


	public void setAdminDao(AdminDAO adminDao) {
		this.adminDao = adminDao;
	}




	public boolean getAdmin(Admin admin){
		
		return adminDao.getAdmin(admin);
		
	}
	
	public List<Admin>getAdmin(){
		return adminDao.getAdmin();
	}

}
