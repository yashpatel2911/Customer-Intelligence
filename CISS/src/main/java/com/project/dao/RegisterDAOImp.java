package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.LoginVO;
import com.project.vo.RegisterVO;

@Repository
public class RegisterDAOImp implements RegisterDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void register(RegisterVO registerVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(registerVO);
	}
	
	@Override
	public void updatepassword(LoginVO loginVO) {
		Session session =  this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("update LoginVO set password='"+loginVO.getPassword()+"' where username= '"+loginVO.getUsername()+"'");
		q.executeUpdate();
		
		
	}
	public List checkEmailId(LoginVO loginVO) {
		
		List EmailList = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username = '"+loginVO.getUsername()+"'");
		EmailList = q.list();
		return EmailList;
	}
	
	

	
}