package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.SubCategoryVO;

@Repository
public class SubCategoryDAOImp implements SubCategoryDAO{
	
	@Autowired
	
	private SessionFactory sessionFactory;
	
	public void insertSubCategory(SubCategoryVO subcategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(subcategoryVO);
	
	}
	
	public  List searchSubCategory(SubCategoryVO subcategoryVO) {
		List ls=new ArrayList();
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from SubCategoryVO where deleteStatus = true ");
		 ls=q.list();
		return ls;
}
	public void  deleteSubCategory(SubCategoryVO subcategoryVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(subcategoryVO);
	
	}

	
	public List editSubCategory(SubCategoryVO subcategoryVO)
	{
			List ls=new ArrayList();
		
			
			Session session = this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from SubCategoryVO where subcategoryId='"+subcategoryVO.getSubcategoryId()+"'");
			 ls=q.list();
			return ls;
	}
	
	public void updateSubCategory(SubCategoryVO subcategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(subcategoryVO);
	
	}	
	
	public List searchSubCategoryByCategory(SubCategoryVO  subcategoryVO) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from SubCategoryVO WHERE categoryVO.categoryId = '"+subcategoryVO.getCategoryVO().getCategoryId()+"'");
		
		ls =q.list();
		return ls;
	}

}
	



