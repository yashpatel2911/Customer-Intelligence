package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.vo.ProductVO;
import com.project.vo.SubCategoryVO;

@Repository

public class ProductDAOImp implements ProductDAO{
		
	
	@Autowired
	private SessionFactory sessionFactory;
	
@Override
	public void insertProduct(ProductVO productVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(productVO);
	
	}
@Override
 public List searchProduct(ProductVO productVO) {
	List ls=new ArrayList();
	
	Session session = this.sessionFactory.getCurrentSession();
	Query q=session.createQuery("from ProductVO where deleteStatus = true ");
	 ls=q.list();
	return ls;

}

public void  deleteProduct(ProductVO productVO)
{
	Session session = this.sessionFactory.getCurrentSession();
	session.delete(productVO);

}


public List editProduct(ProductVO productVO)
{
		List ls=new ArrayList();
	
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ProductVO where productId='"+productVO.getProductId()+"'");
		 ls=q.list();
		return ls;
}

public void updateProduct(ProductVO productVO) {
	Session session = this.sessionFactory.getCurrentSession();
	session.saveOrUpdate(productVO);

}

}

