package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.LoginDAO;
import com.project.dao.RegisterDAO;
import com.project.vo.LoginVO;
import com.project.vo.RegisterVO;

@Service
public class RegisterServices {

	
	@Autowired
	RegisterDAO registerDAO;

	@Transactional
	public void insertRegister(RegisterVO registerVO) {
		registerDAO.register(registerVO);
	}
	
	@Transactional
	public List checkEmailId(LoginVO registerVO) {
		
		return this.registerDAO.checkEmailId(registerVO);
	}
	
	@Transactional
	public void updatepassword(LoginVO loginVO) {
		
		this.registerDAO.updatepassword(loginVO);
		
	}

}
