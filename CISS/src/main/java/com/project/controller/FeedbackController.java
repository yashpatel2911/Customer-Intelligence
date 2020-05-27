package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.FeedbackServices;
import com.project.services.LoginServices;
import com.project.utils.Basemethods;
import com.project.vo.FeedbackVO;
import com.project.vo.LoginVO;

@Controller
public class FeedbackController {

	
	@Autowired
	LoginServices loginServices;
	
	@Autowired
	FeedbackServices feedbackServices;
	
	@RequestMapping(value="/user/loadFeedback.html",method=RequestMethod.GET)
	public ModelAndView loadFeedback(@ModelAttribute FeedbackVO feedbackVO)
	{
		return new ModelAndView("/user/addFeedback","feedbackVO",new FeedbackVO());
	}
	
	@RequestMapping(value="/user/insertRating",method=RequestMethod.POST)
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedbackVO,LoginVO loginVO)
	{
		String userName = Basemethods.getUser();
		loginVO.setUsername(userName);
		

		List loginList  = loginServices.searchLoginID(loginVO);
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);		
		feedbackVO.setLoginVO(loginVO2);
		this.feedbackServices.insertFeedback(feedbackVO);
		return new ModelAndView("/user/addFeedback","feedbackVO",new FeedbackVO());
	}
	
	@RequestMapping(value="/admin/viewFeedback",method=RequestMethod.GET)
	public ModelAndView viewFeedback(@ModelAttribute FeedbackVO feedbackVO) {
		
		List feedbackList = this.feedbackServices.viewFeedback(feedbackVO);
		
		return new ModelAndView("/admin/viewFeedback","feedbackList",feedbackList);
	}
	
	@RequestMapping(value="/user/viewuserFeedback",method=RequestMethod.GET)
	public ModelAndView viewstaffFeedback(@ModelAttribute FeedbackVO feedbackVO, LoginVO loginVO) {
		
		String userName = Basemethods.getUser();
		loginVO.setUsername(userName);
		
		List loginList  = loginServices.searchLoginID(loginVO); 	
		LoginVO loginVO2 = (LoginVO) loginList.get(0);	
		feedbackVO.setLoginVO(loginVO2);
		
		List feedbackList = this.feedbackServices.viewuserFeedback(feedbackVO);
		
		return new ModelAndView("/user/viewFeedback","feedbackList",feedbackList);
		
	}
	
}

