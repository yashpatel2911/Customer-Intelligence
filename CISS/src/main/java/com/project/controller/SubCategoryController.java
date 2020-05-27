package com.project.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.CategoryServices;
import com.project.services.SubCategoryServices;
import com.project.vo.CategoryVO;
import com.project.vo.ProductVO;
import com.project.vo.SubCategoryVO;

@Controller
public class SubCategoryController {

	@Autowired
	SubCategoryServices subcategoryServices;
	
	@Autowired
	CategoryServices categoryServices;
	
	@RequestMapping(value = "admin/loadSubCategory", method = RequestMethod.GET)
	public ModelAndView loadCategory(@ModelAttribute CategoryVO categoryVO) {
		
		List categoryList = this.categoryServices.searchCategory(categoryVO);
		return new ModelAndView("admin/addSubCategory","subcategoryVO",new SubCategoryVO()).addObject("categoryList",categoryList);
	}
	
	@RequestMapping(value = "admin/insertSubCategory", method = RequestMethod.POST)
	public ModelAndView insertSubCategory(@ModelAttribute SubCategoryVO subcategoryVO) {
		
		System.out.println("in subcategory insert method");
		this.subcategoryServices.insertSubCategory(subcategoryVO);
		return new ModelAndView("redirect:/admin/loadSubCategory");
	} 
	
	@RequestMapping(value="admin/searchSubCategory" , method=RequestMethod.GET)
	public ModelAndView searchSubCategory(@ModelAttribute SubCategoryVO subcategoryVO)
	{
		List subCategoryList = subcategoryServices.searchSubCategory(subcategoryVO);
		System.out.println("==========="+subCategoryList.size());
	 return new ModelAndView("admin/viewSubCategory","subCategoryList",subCategoryList);
	 }
	
@RequestMapping(value="admin/deleteSubCategory", method=RequestMethod.GET)
	
	public ModelAndView deleteSubCategory(SubCategoryVO subcategoryVO,@RequestParam("subcategoryId")int subcategoryId) {
		
		subcategoryVO.setSubcategoryId(subcategoryId);
		List subcategoryList =this.subcategoryServices.editSubCategory(subcategoryVO);
		subcategoryVO =(SubCategoryVO)subcategoryList.get(0);
		
		subcategoryVO.setDeleteStatus(false);
		subcategoryServices.updateSubCategory(subcategoryVO);
		
		return new ModelAndView("redirect:/admin/searchSubCategory");
	}
	
	@RequestMapping(value="admin/subcategoryEdit", method = RequestMethod.GET)
	
	public ModelAndView subcategoryEdit(SubCategoryVO subcategoryVO,CategoryVO categoryVO,@RequestParam("subcategoryId")int subcategoryId) {
		
		subcategoryVO.setSubcategoryId(subcategoryId);
		List categoryList = this.categoryServices.searchCategory(categoryVO);
		
		List ls = subcategoryServices.editSubCategory(subcategoryVO);
		

		return new ModelAndView("admin/editSubCategory","subcategoryVO",(SubCategoryVO)ls.get(0)).addObject("categoryList",categoryList );
				}
	@RequestMapping(value="/admin/subcategoryUpdate" , method=RequestMethod.POST)
	public ModelAndView update(SubCategoryVO subcategoryVO)
	{
		subcategoryServices.updateSubCategory(subcategoryVO);		
		 return new ModelAndView("redirect:/admin/searchSubCategory");
			
	}

}


