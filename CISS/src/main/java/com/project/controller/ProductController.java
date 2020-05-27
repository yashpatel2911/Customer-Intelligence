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
import com.project.services.ProductServices;
import com.project.services.SubCategoryServices;
import com.project.vo.CategoryVO;
import com.project.vo.ProductVO;
import com.project.vo.SubCategoryVO;

@Controller
public class ProductController {

	@Autowired
	CategoryServices categoryServices;

	@Autowired
	SubCategoryServices subcategoryServices;
	
	@Autowired
	ProductServices productServices;
	

	@RequestMapping(value = "/user/loadProduct", method = RequestMethod.GET)
	public ModelAndView loadProduct(@ModelAttribute CategoryVO categoryVO,SubCategoryVO subcategoryVO) {
		
		List categoryList = this.categoryServices.searchCategory(categoryVO);
		List subcategoryList = this.subcategoryServices.searchSubCategory(subcategoryVO);
		
		return new ModelAndView("/user/addProduct","productVO",new ProductVO()).addObject("categoryList",categoryList).addObject("subcategoryList", subcategoryList);
	}
	
	@RequestMapping(value = "/user/insertProduct", method = RequestMethod.POST)
	public ModelAndView insertProduct(@ModelAttribute ProductVO productVO) {
		
		this.productServices.insertProduct(productVO);
		return new ModelAndView("redirect:/user/loadProduct");
	} 

	@RequestMapping(value="/user/searchProduct" , method=RequestMethod.GET)
	public ModelAndView searchProduct(@ModelAttribute ProductVO productVO)
	{
		List ls=productServices.searchProduct(productVO);
		System.out.println("==========="+ls.size());
	 return new ModelAndView("/user/viewProduct","productList",ls);
	 }

@RequestMapping(value="/user/deleteProduct", method=RequestMethod.GET)
	
	public ModelAndView deleteProduct(ProductVO productVO,@RequestParam("productId")int productId) {
		
		productVO.setProductId(productId);
		List productList =this.productServices.editProduct(productVO);
		productVO =(ProductVO)productList.get(0);
		
		productVO.setDeleteStatus(false);
		productServices.updateProduct(productVO);
		List ls=productServices.searchProduct(productVO);
		return new ModelAndView("redirect:/user/searchProduct");
	}
	
	@RequestMapping(value="/user/editProduct", method = RequestMethod.GET)
	
	public ModelAndView editProduct(ProductVO productVO,SubCategoryVO subcategoryVO,CategoryVO categoryVO,@RequestParam("productId")int productId) {
		
		productVO.setProductId(productId);
		List categoryList = this.categoryServices.searchCategory(categoryVO);
		List subcategoryList = this.subcategoryServices.searchSubCategory(subcategoryVO);
		
		List ls = productServices.editProduct(productVO);
		

		return new ModelAndView("/user/editProduct","productVO",(ProductVO)ls.get(0)).addObject("categoryList",categoryList ).addObject("subcategoryList",subcategoryList );
				}
	@RequestMapping(value="/user/updateProduct" , method=RequestMethod.POST)
	public ModelAndView update(ProductVO productVO)
	{
		List ls=productServices.searchProduct(productVO);
		productServices.updateProduct(productVO);		
		 return new ModelAndView("redirect:/user/searchProduct");
			
	}
	
	@RequestMapping(value="/user/loadSubCategoryByAjax" , method = RequestMethod.GET)
	public ModelAndView loadSubcategoryByAjax(@RequestParam ("categoryId") int categoryId,@ModelAttribute CategoryVO categoryVO,SubCategoryVO subCategoryVO){

		System.out.println("============================================= in Method");
		
		categoryVO.setCategoryId(categoryId);
		subCategoryVO.setCategoryVO(categoryVO);
		List  subCategoryList = subcategoryServices.searchSubCategoryByCategory(subCategoryVO);
		
		System.out.println(subCategoryList.size() + "=============================================");
		return new ModelAndView("user/subCategoryJson","subCategoryList",subCategoryList);
	}
}
