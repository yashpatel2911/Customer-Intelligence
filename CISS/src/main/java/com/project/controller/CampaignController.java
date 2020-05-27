package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.CampaignServices;
import com.project.services.ProductServices;
import com.project.vo.CampaignVO;
import com.project.vo.ProductVO;

@Controller
public class CampaignController {
	
	@Autowired
	CampaignServices campaignServices;

	@Autowired
	ProductServices productServices;

	@RequestMapping(value = "/user/loadCampaign", method = RequestMethod.GET)
	public ModelAndView loadProduct(@ModelAttribute ProductVO productVO) {
		
		List productList = this.productServices.searchProduct(productVO);
		return new ModelAndView("/user/addCampaign","campaignVO",new CampaignVO()).addObject("productList",productList);
	}
	
	@RequestMapping(value = "/user/insertCampaign", method = RequestMethod.POST)
	public ModelAndView insertCampaign(@ModelAttribute CampaignVO campaignVO) {
		
		System.out.println("in campaign insert method");
		this.campaignServices.insertCampaign(campaignVO);
		return new ModelAndView("redirect:/user/loadCampaign");
	} 
	
	@RequestMapping(value="/user/searchCampaign" , method=RequestMethod.GET)
	public ModelAndView searchCampaign(@ModelAttribute CampaignVO campaignVO)
	{
		List ls=campaignServices.searchCampaign(campaignVO);
		System.out.println("==========="+ls.size());
	 return new ModelAndView("/user/viewCampaign","campaignList",ls);
	 }
	
	@RequestMapping(value="/user/deleteCampaign", method=RequestMethod.GET)
	
	public ModelAndView deleteCampaign(CampaignVO campaignVO,@RequestParam("campaignId")int campaignId) {
		
		campaignVO.setCampaignId(campaignId);
		List campaignList =this.campaignServices.editCampaign(campaignVO);
		
		campaignVO =(CampaignVO)campaignList.get(0);
		
		campaignVO.setDeleteStatus(false);
		campaignServices.updateCampaign(campaignVO);
		List ls=campaignServices.searchCampaign(campaignVO);
		
		return new ModelAndView("redirect:/user/searchCampaign");
	}
	
	@RequestMapping(value="/user/campaignEdit", method = RequestMethod.GET)
	
	public ModelAndView campaignEdit(CampaignVO campaignVO,ProductVO productVO,@RequestParam("campaignId")int campaignId) {
		
		campaignVO.setCampaignId(campaignId);
		List productList = this.productServices.searchProduct(productVO);
		
		List ls = campaignServices.editCampaign(campaignVO);
		

		return new ModelAndView("/user/editCampaign","campaignVO",(CampaignVO)ls.get(0)).addObject("productList",productList );
				}
	
	@RequestMapping(value="/user/campaignUpdate" , method=RequestMethod.POST)
	public ModelAndView update(CampaignVO campaignVO)
	{
		
		List ls=this.campaignServices.searchCampaign(campaignVO);
		this.campaignServices.updateCampaign(campaignVO);
		 return new ModelAndView("redirect:/user/searchCampaign");
			
	}


}
