package com.project.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.transaction.Transactional;
import com.project.dao.CategoryDAO;
import com.project.vo.CategoryVO;
@Service
public class CategoryServices {

	
	
		
@Autowired CategoryDAO categoryDAO;
	
	
	@Transactional
	

	public void addCategory(CategoryVO categoryVO) {
		categoryDAO.addCategory(categoryVO);
			
	}
	
	@Transactional
	
		public List searchCategory(CategoryVO categoryVO)
		{
			return categoryDAO.searchCategory(categoryVO);
		}
		
	@Transactional
	
		public void deleteCategory(CategoryVO categoryVO)
		{
			this.categoryDAO.deleteCategory(categoryVO);
		}
	
	@Transactional
	public void updateCategory(CategoryVO categoryVO)
	{
		this.categoryDAO.updateCategory(categoryVO);
	}
	
	
	
	@Transactional
	public List editCategory(CategoryVO categoryVO)
	{
		// TODO Auto-generated method stub
		return categoryDAO.editCategory(categoryVO);
	}
	
	}
		
	
		
	



