package com.project.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.CityServices;
import com.project.vo.CityVO;

@Controller
public class CityController {

	@Autowired CityServices cityServices;
	
	
	@RequestMapping(value = "admin/loadCity", method = RequestMethod.GET)
	public ModelAndView loadCity() {
	
		return new ModelAndView("admin/addCity","CityVO",new CityVO());
	}
	
	@RequestMapping(value = "admin/insertCity", method = RequestMethod.POST)
	public ModelAndView insertCity(@ModelAttribute CityVO cityVO ) {
	
		cityServices.addCity(cityVO);
		return new ModelAndView("admin/addCity","data",new CityVO());
	}
	
	@RequestMapping(value="admin/searchCity" , method=RequestMethod.GET)
	public ModelAndView searchCity(@ModelAttribute CityVO cityVO)
	{
		List ls=cityServices.searchCity(cityVO);
		System.out.println("==========="+ls.size());
	 return new ModelAndView("admin/viewCity","x",ls);
		
	}
	
	@RequestMapping(value = "admin/cityDelete", method = RequestMethod.GET)
	
	public ModelAndView delete(CityVO cityVO,@RequestParam("cityId")int cityId) {
		
		cityVO.setCityId(cityId);
		List cityList =this.cityServices.editCity(cityVO);
		cityVO =(CityVO)cityList.get(0);
		
		cityVO.setDeleteStatus(false);
		this.cityServices.updateCity(cityVO);
		
		return new ModelAndView("redirect:/admin/searchCity");
	}
	
	@RequestMapping(value="admin/cityEdit", method = RequestMethod.GET)
	
	public ModelAndView cityEdit(CityVO cityVO,@RequestParam("cityId")int cityId) 
	{
		
		cityVO.setCityId(cityId);
		List ls = cityServices.editCity(cityVO);
		

		System.out.println("==========="+ls.size());
		return new ModelAndView("admin/editCity","data",(CityVO)ls.get(0));
		
	}
	
	@RequestMapping(value="admin/cityUpdate" , method=RequestMethod.POST)
	
	public ModelAndView update(CityVO cityVO)
	{
		cityServices.updateCity(cityVO);		
		 return new ModelAndView("redirect:/admin/searchCity");
			
	}
}

	

