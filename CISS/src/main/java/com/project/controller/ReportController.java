package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.GraphServices;

@Controller
public class ReportController {
	
	@Autowired
	GraphServices graphService;
	
	@RequestMapping(value="user/search", method = RequestMethod.GET)
	public ModelAndView faceDetection()	{
		List ls = this.graphService.generateGraph();
		
		return new ModelAndView("user/viewReport","graphData",ls);
	}
}
