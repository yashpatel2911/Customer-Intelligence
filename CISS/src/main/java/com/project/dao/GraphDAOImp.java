package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GraphDAOImp implements GraphDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public List generateGraph(){
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("SELECT SUM(Angry),SUM(Disgust),SUM(Fear),SUM(Happy),SUM(Sad),SUM(Suprise),SUM(Neutral) FROM detection_table");
		List ls = q.list();
		return ls;

		
		
		
	}
	
}
