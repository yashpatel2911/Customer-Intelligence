package com.project.dao;


import java.util.List;

import com.project.vo.LoginVO;


public interface LoginDAO {
	
	
	public void insertLogin(LoginVO loginVO);

	public List searchLoginID(LoginVO loginVO);

	public List checkEmailId(LoginVO loginVO);

	public void updatepassword(LoginVO loginVO);


	

}


