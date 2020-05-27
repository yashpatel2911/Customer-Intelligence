package com.project.dao;

import java.util.List;

import com.project.vo.ProductVO;

public interface ProductDAO {
	
	public void insertProduct(ProductVO productVO);
	
	public List searchProduct(ProductVO productVO);
	
	public void deleteProduct(ProductVO productVO);
	
	public List editProduct(ProductVO productVO);
	
	public void updateProduct(ProductVO productVO);

}
