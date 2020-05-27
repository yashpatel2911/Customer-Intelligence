package com.project.dao;

import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.CityVO;



@Repository
public class CityDAOImp implements CityDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCity(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(cityVO);
	
	}
	
	public  List searchCity(CityVO cityVO) {
		List ls=new ArrayList();
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CityVO where deleteStatus = true");
		 ls=q.list();
		return ls;
	}
	
	public void  deleteCity(CityVO cityVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(cityVO);
	
	}
	
	public List editCity(CityVO cityVO)
	{
			List ls=new ArrayList();
		
			
			Session session = this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from CityVO where cityId='"+cityVO.getCityId()+"'");
			 ls=q.list();
			return ls;
	}
	
	public void updateCity(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(cityVO);
	
	}
	
	}


