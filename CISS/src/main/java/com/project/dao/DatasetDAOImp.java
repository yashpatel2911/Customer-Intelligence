package com.project.dao;
import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.DatasetVO;



@Repository
public class DatasetDAOImp implements DatasetDAO {
	
	@Autowired
	
	private SessionFactory sessionFactory;
	
	public void addDataset(DatasetVO datasetVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(datasetVO);
	
	}
	
	public  List searchDataset(DatasetVO datasetVO) {
		List ls=new ArrayList();
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from DatasetVO where deleteStatus = true ");
		 ls=q.list();
		return ls;
	}
	
	public void  deleteDataset(DatasetVO datasetVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(datasetVO);
	
	}
	
	public List editDataset(DatasetVO datasetVO)
	{
			List ls=new ArrayList();
		
			
			Session session = this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from DatasetVO where datasetId='"+datasetVO.getDatasetId()+"'");
			 ls=q.list();
			return ls;
	}
	
	public void updateDataset(DatasetVO datasetVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(datasetVO);
	
	}
	

}
