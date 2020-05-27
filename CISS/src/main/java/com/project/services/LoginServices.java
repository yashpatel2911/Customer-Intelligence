package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.LoginDAO;
import com.project.dao.RegisterDAO;
import com.project.vo.LoginVO;

@Service
public class LoginServices {

	@Autowired LoginDAO loginDAO;
	
	@Autowired RegisterDAO registerDAO;
	
	@Transactional
	public void insertLogin(LoginVO loginVO) {
		loginDAO.insertLogin(loginVO);
	}
	
	@Transactional
	public List searchLoginID(LoginVO loginServices) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(loginServices);
		return ls;
	}
@Transactional
	public List checkEmailId(LoginVO loginVO) {
	List ls = loginDAO.searchLoginID(loginVO);
		return ls;
	

}

@Transactional
public void updatepassword(LoginVO loginVO) {
	registerDAO.updatepassword(loginVO);
}	

	
}


