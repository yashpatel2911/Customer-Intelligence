package com.project.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.AreaServices;
import com.project.services.CityServices;
import com.project.vo.AreaVO;
import com.project.vo.CityVO;





@Controller
public class AreaController {
	
	@Autowired
	AreaServices areaServices;
	
	@Autowired
	CityServices cityServices;
	

	@RequestMapping(value = "admin/loadArea", method = RequestMethod.GET)
	public ModelAndView loadCity(@ModelAttribute CityVO cityVO) {
		
		List cityList = this.cityServices.searchCity(cityVO);
		return new ModelAndView("admin/addArea","areaVO",new AreaVO()).addObject("cityList",cityList);
	}
	@RequestMapping(value = "admin/insertArea", method = RequestMethod.POST)
	public ModelAndView insertArea(@ModelAttribute AreaVO areaVO) {
		
		System.out.println("in area insert method");
		this.areaServices.insertArea(areaVO);
		return new ModelAndView("redirect:/admin/loadArea");
	} 
	
	@RequestMapping(value="admin/searchArea" , method=RequestMethod.GET)
	public ModelAndView searchArea(@ModelAttribute AreaVO areaVO)
	{
		List ls=areaServices.searchArea(areaVO);
		System.out.println("==========="+ls.size());
	 return new ModelAndView("admin/viewArea","x",ls);
	 }
	
@RequestMapping(value="admin/deleteArea", method=RequestMethod.GET)
	
	public ModelAndView deleteArea(AreaVO areaVO,@RequestParam("areaId")int areaId) {
		
		areaVO.setAreaId(areaId);
		List areaList =this.areaServices.editArea(areaVO);
		areaVO =(AreaVO)areaList.get(0);
		
		areaVO.setDeleteStatus(false);
		areaServices.updateArea(areaVO);
		
		return new ModelAndView("redirect:/admin/searchArea");
	}
	
	@RequestMapping(value="admin/areaEdit", method = RequestMethod.GET)
	
	public ModelAndView areaEdit(AreaVO areaVO,CityVO cityVO,@RequestParam("areaId")int areaId) 
	{	
		areaVO.setAreaId(areaId);
		
		List cityList = this.cityServices.searchCity(cityVO);
		
		System.out.println("CityList========"+cityList.size());
		
		List ls = areaServices.editArea(areaVO);
		System.out.println("AreaList========="+ls.size());

		return new ModelAndView("admin/editArea","areaVO",(AreaVO)ls.get(0)).addObject("cityList",cityList );
				}
	@RequestMapping(value="admin/areaUpdate" , method=RequestMethod.POST)
	public ModelAndView update(AreaVO areaVO)
	{
		this.areaServices.updateArea(areaVO);		
		 return new ModelAndView("redirect:/admin/searchArea");
			
	}


}
