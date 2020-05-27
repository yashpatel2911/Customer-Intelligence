package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.PackageVO;

@Repository
public class PackageDAOImp implements PackageDAO {
	@Autowired
	private SessionFactory sessionFactory;

	
	public void insertPackage(PackageVO packageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(packageVO);
	
	}
	
	public  List searchPackage(PackageVO packageVO) {
		List ls=new ArrayList();
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from PackageVO where deleteStatus = true");
		 ls=q.list();
		return ls;
	
	}


	public void  deletePackage(PackageVO packageVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(packageVO);
	
	}
	
	public List editPackage(PackageVO packageVO)
	{
			List ls=new ArrayList();
	
			Session session = this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from PackageVO where packageId='"+packageVO.getPackageId()+"'");
			ls=q.list();
			return ls;
	}
	
	
	public void updatePackage(PackageVO packageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(packageVO);
	
	}
	
	}



