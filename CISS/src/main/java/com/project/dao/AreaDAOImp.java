package com.project.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.AreaVO;
import com.project.vo.CityVO;

import java.util.ArrayList;



@Repository
public class AreaDAOImp implements AreaDAO{
	
	@Autowired
	
	private SessionFactory sessionFactory;
	
	public void insertArea(AreaVO areaVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(areaVO);
	
	}
	
	public  List searchArea(AreaVO areaVO) {
		List ls=new ArrayList();
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from AreaVO where deleteStatus = true ");
		 ls=q.list();
		return ls;
}
	public void  deleteArea(AreaVO areaVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(areaVO);
	
	}

	
	public List editArea(AreaVO areaVO)
	{
			List ls=new ArrayList();
		
			
			Session session = this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from AreaVO where areaId='"+areaVO.getAreaId()+"'");
			 ls=q.list();
			return ls;
	}
	
	public void updateArea(AreaVO areaVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(areaVO);
	
	}	
}
	



