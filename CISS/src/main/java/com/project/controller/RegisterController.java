package com.project.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.mail.email;
import com.project.services.GraphServices;
import com.project.services.LoginServices;
import com.project.services.RegisterServices;
import com.project.vo.LoginVO;
import com.project.vo.RegisterVO;

@Controller
public class RegisterController {
	
	@Autowired
	LoginServices loginServices;
	
	@Autowired
	RegisterServices registerServices;

	@Autowired
	GraphServices graphService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView loadRegister() {

		return new ModelAndView("register","register",new RegisterVO());
	}
	
	@RequestMapping(value = "/insertRegister", method = RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute RegisterVO registerVO,LoginVO loginVO) {

		loginVO.setUsername(registerVO.getLoginVO().getUsername());
		loginVO.setPassword(registerVO.getLoginVO().getPassword());
		loginVO.setEnabled(1);
		loginVO.setRole("ROLE_USER");
		loginServices.insertLogin(loginVO);
		
		registerVO.setLoginVO(loginVO);
		registerServices.insertRegister(registerVO);

		return new ModelAndView("login");
	}
	

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex(LoginVO loginVO ) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		
		
		return new ModelAndView("admin/index");
	}
	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {
		List ls = this.graphService.generateGraph();
		
		return new ModelAndView("user/index","graphData",ls);
	}
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {

		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	}
	        return "login";
	        }
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("Login");
	}
	
	
	@RequestMapping(value="forgotpwd")
	public ModelAndView goToforgotpwdPage()
	{
		return new ModelAndView("forgotPassword","verifyEmailId",new RegisterVO());
	}
	
	@RequestMapping(value="checkEmailId")
	public ModelAndView checkEmailId(LoginVO loginVO,@RequestParam("username") String email , HttpServletRequest request,HttpSession session, Object loginId)
	{
		String subject="FORGOT PASSWORD ",content="OTP:";
		
		loginVO.setUsername(email);
		System.out.println("username"+email);
		session.setAttribute("username", email);
		List ls=loginServices.checkEmailId(loginVO);
		System.out.println(ls.size());
		
		
		
		
		if(ls.size()!=0)
		{
			email e= new email();
			int OTP=e.generateOTP(4);
			session.setAttribute("generatedOTP", OTP);
			System.out.println("OTP>>>>>>"+OTP);
			e.sendMail(email, OTP, subject, content);
			
			return new ModelAndView("otpForgotPassword");
	
		}
		else
			return new ModelAndView("redirect:/");
	}
	
		@RequestMapping(value="updatePassword", method = RequestMethod.POST)
		public ModelAndView updatePassword(@ModelAttribute LoginVO loginVO,@RequestParam("password")String password,HttpSession session)
		{
			String username=(String)session.getAttribute("username");
	        loginVO.setPassword(password);
	        loginVO.setUsername(username);
	            
			this.loginServices.updatepassword(loginVO);
	
         	return new ModelAndView("redirect:/");
}

	
}
