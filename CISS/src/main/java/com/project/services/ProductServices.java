package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ProductDAO;
import com.project.vo.ProductVO;

@Service
public class ProductServices {

@Autowired ProductDAO productDAO;
	
	
@Transactional
	
	public void insertProduct(ProductVO productVO)
	{
		this.productDAO.insertProduct(productVO);
	}
	
@Transactional
public List searchProduct(ProductVO productVO)
{
	return productDAO.searchProduct(productVO);
}

@Transactional
public void deleteProduct(ProductVO productVO)
{
	this.productDAO.deleteProduct(productVO);
}
@Transactional
public void updateProduct(ProductVO productVO)
{
	this.productDAO.updateProduct(productVO);
}
@Transactional
public List editProduct(ProductVO productVO) {
	return productDAO.editProduct(productVO);
}

}	