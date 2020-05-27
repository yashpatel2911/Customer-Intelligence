package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.LoginVO;



@Repository
public class LoginDAOImp implements LoginDAO{
	
@Autowired SessionFactory sessionFactory;
	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(loginVO);
	}
	
	@Override
	public List searchLoginID(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username = '"+loginVO.getUsername()+"' ");
		List ls = q.list();
		return ls;
	}

	

	@Override
	public List checkEmailId(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username = '"+loginVO.getUsername()+"' ");
		List ls=q.list();
		return ls;
	}

	@Override
	public void updatepassword(LoginVO loginVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("update LoginVO set password = '"+loginVO.getPassword()+"'where username='"+loginVO.getUsername());
		
	}


	

	
	
	
}
