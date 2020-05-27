package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.PackageServices;

import com.project.vo.PackageVO;


@Controller
public class PackageController 
{
	
	@Autowired
	PackageServices packageServices;

	@RequestMapping(value="admin/loadPackage", method=RequestMethod.GET)
	public ModelAndView loadPackage() 
	{
		return new ModelAndView("admin/addPackage","packageVO",new PackageVO());
	}
	
	@RequestMapping(value="admin/insertPackage", method=RequestMethod.POST)
	public ModelAndView insertPackage(@ModelAttribute PackageVO packageVO) 
	{
	     this.packageServices.insertPackage(packageVO);
	     return new ModelAndView("redirect:/admin/loadPackage");
	} 
		
	@RequestMapping(value="admin/searchPackage" , method=RequestMethod.GET)
	public ModelAndView searchPackage(@ModelAttribute PackageVO packageVO)
	{
		List ls=packageServices.searchPackage(packageVO);
		System.out.println("==========="+ls.size());
	 return new ModelAndView("admin/viewPackage","x",ls);
		
	}
	

	@RequestMapping(value = "admin/packageDelete", method = RequestMethod.GET)
	
	public ModelAndView delete(PackageVO packageVO,@RequestParam ("packageId")int packageId) {
		
		packageVO.setPackageId(packageId);
		List packageList =this.packageServices.editPackage(packageVO);
		packageVO =(PackageVO)packageList.get(0);
		
		packageVO.setDeleteStatus(false);
		this.packageServices.updatePackage(packageVO);
		
		return new ModelAndView("redirect:/admin/searchPackage");
	}
	
	@RequestMapping(value="admin/packageEdit", method = RequestMethod.GET)
	
	public ModelAndView packageEdit(PackageVO packageVO,@RequestParam("packageId")int packageId) {
		
		packageVO.setPackageId(packageId);
		List ls = packageServices.editPackage(packageVO);
		

		System.out.println("==========="+ls.size());
		
		return new ModelAndView("admin/editPackage","data",(PackageVO)ls.get(0));
	}
	
	@RequestMapping(value="admin/packageUpdate" , method=RequestMethod.POST)
	public ModelAndView update(PackageVO packageVO)
	{
		packageServices.updatePackage(packageVO);		
		 return new ModelAndView("redirect:/admin/searchPackage");
			
	}
		
}

