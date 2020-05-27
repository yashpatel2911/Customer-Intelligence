package com.project.dao;

import java.util.List;

import com.project.vo.LoginVO;
import com.project.vo.RegisterVO;

public interface RegisterDAO {

	public void register(RegisterVO registerVO);
	
	public void updatepassword(LoginVO loginVO);
	
	public List checkEmailId(LoginVO registerVO);

}
