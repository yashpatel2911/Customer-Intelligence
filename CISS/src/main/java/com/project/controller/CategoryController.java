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
import com.project.vo.CategoryVO;



@Controller

public class CategoryController {
	
	@Autowired CategoryServices categoryServices;
	@RequestMapping(value="/")
	ModelAndView load()
	{
		
		return new ModelAndView("admin/index");
	}

	@RequestMapping(value = "admin/loadCategory", method = RequestMethod.GET)
	public ModelAndView loadCategory() {
	
		return new ModelAndView("admin/addCategory","CategoryVO",new CategoryVO());
	}
	
	@RequestMapping(value = "admin/insertCategory", method = RequestMethod.POST)
	public ModelAndView insertCategory(@ModelAttribute CategoryVO categoryVO ) {
	
		categoryServices.addCategory(categoryVO);
		return new ModelAndView("admin/addCategory","data",new CategoryVO());
	}
	
	@RequestMapping(value="admin/searchCategory" , method=RequestMethod.GET)
	public ModelAndView searchCategory(@ModelAttribute CategoryVO categoryVO)
	{
		List ls=categoryServices.searchCategory(categoryVO);
		System.out.println("==========="+ls.size());
	 return new ModelAndView("admin/viewCategory","x",ls);
		
	}
	
	@RequestMapping(value = "admin/categoryDelete", method = RequestMethod.GET)
	
	public ModelAndView delete(CategoryVO categoryVO,@RequestParam("categoryId")int categoryId) {
		
		categoryVO.setCategoryId(categoryId);
		List categoryList =this.categoryServices.editCategory(categoryVO);
		categoryVO =(CategoryVO)categoryList.get(0);
		
		categoryVO.setDeleteStatus(false);
		this.categoryServices.updateCategory(categoryVO);
		
		return new ModelAndView("redirect:/admin/searchCategory");
	}
	
	
	@RequestMapping(value="admin/categoryEdit", method = RequestMethod.GET)
	
	public ModelAndView categoryEdit(CategoryVO categoryVO,@RequestParam("categoryId")int categoryId) 
	{
		
		categoryVO.setCategoryId(categoryId);
		List ls = categoryServices.editCategory(categoryVO);
		

		System.out.println("==========="+ls.size());
		return new ModelAndView("admin/editCategory","categoryVO",(CategoryVO)ls.get(0));
		
	}
	
	@RequestMapping(value="admin/categoryUpdate" , method=RequestMethod.POST)
	
	public ModelAndView update(CategoryVO categoryVO)
	{
		categoryServices.updateCategory(categoryVO);		
		 return new ModelAndView("redirect:/admin/searchCategory");
			
	}
}


