package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.CampaignVO;

@Repository
public class CampaignDAOImp implements CampaignDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insertCampaign(CampaignVO campaignVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(campaignVO);
	
	}

	public  List searchCampaign(CampaignVO campaignVO) {
		List ls=new ArrayList();
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CampaignVO where deleteStatus = true ");
		 ls=q.list();
		return ls;
}

	public void  deleteCampaign(CampaignVO campaignVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(campaignVO);
	
	}

	
	public List editCampaign(CampaignVO campaignVO)
	{
			List ls=new ArrayList();
		
			
			Session session = this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from CampaignVO where campaignId='"+campaignVO.getCampaignId()+"'");
			 ls=q.list();
			return ls;
	}
	
	public void updateCampaign(CampaignVO campaignVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(campaignVO);
	
	}	

}
