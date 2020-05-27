package com.project.dao;

import java.util.List;
import com.project.vo.SubCategoryVO;
public interface SubCategoryDAO {
	
	public void insertSubCategory(SubCategoryVO subcategoryVO);

	public List searchSubCategory(SubCategoryVO subcategoryVO);
	
	public void  deleteSubCategory(SubCategoryVO subcategoryVO);
	
	public  List editSubCategory(SubCategoryVO subcategoryVO);
	
	public void  updateSubCategory(SubCategoryVO subcategoryVO);
	
	public List searchSubCategoryByCategory(SubCategoryVO  subcategoryVO);
}
