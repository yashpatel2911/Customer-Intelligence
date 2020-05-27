package com.project.services;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.SubCategoryDAO;
import com.project.vo.CategoryVO;
import com.project.vo.SubCategoryVO;

@Service
public class SubCategoryServices {
	
	@Autowired SubCategoryDAO subcategoryDAO;
	
	@Transactional
	public void insertSubCategory(SubCategoryVO subcategoryVO)
	{
		this.subcategoryDAO.insertSubCategory(subcategoryVO);
	}
	
	@Transactional
	public List searchSubCategory(SubCategoryVO subcategoryVO)
	{
		return subcategoryDAO.searchSubCategory(subcategoryVO);
	}
	

	@Transactional
	public void deleteSubCategory(SubCategoryVO subcategoryVO)
	{
		this.subcategoryDAO.deleteSubCategory(subcategoryVO);
	}
	
	
	@Transactional
	public void updateSubCategory(SubCategoryVO subcategoryVO)
	{
		this.subcategoryDAO.updateSubCategory(subcategoryVO);
	}
	
	@Transactional
	public List editSubCategory(SubCategoryVO subcategoryVO) {
		return subcategoryDAO.editSubCategory(subcategoryVO);
	}
	
	@Transactional
	public List searchSubCategoryByCategory(SubCategoryVO  subcategoryVO){
		
		return subcategoryDAO.searchSubCategoryByCategory(subcategoryVO);
	}
	}
	

