package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	
	@RequestMapping(value="user/faceDetection")
	public ModelAndView faceDetection()	{
		
		return new ModelAndView("user/faceDetection");
	}
}
