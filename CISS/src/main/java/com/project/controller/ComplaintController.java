package com.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.ComplaintServices;
import com.project.services.LoginServices;
import com.project.utils.Basemethods;
import com.project.vo.ComplaintVO;
import com.project.vo.LoginVO;

@Controller
public class ComplaintController {

	@Autowired
	ComplaintServices complaintServices;
	
	
	@Autowired
	LoginServices loginServices;
	
	
	@RequestMapping(value="/user/loadComplaint",method=RequestMethod.GET)
	public ModelAndView loadComplaint(@ModelAttribute ComplaintVO complaintVO){
		return new ModelAndView("user/addComplaint","ComplaintVO", new ComplaintVO());
	}
	
	@RequestMapping(value="/user/insertComplaint",method=RequestMethod.POST)
	public ModelAndView insertComplaint(@ModelAttribute ComplaintVO complaintVO,LoginVO loginVO) {
		Date d = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		String userName = Basemethods.getUser();
		loginVO.setUsername(userName);
		
		List loginList  = loginServices.searchLoginID(loginVO);
		
		LoginVO loginVO2 = (LoginVO) loginList.get(0);
		complaintVO.setLoginVO(loginVO2);
		complaintVO.setComplaintDate(dateFormat.format(d));
		complaintVO.setComplaintStatus("PENDING");
		this.complaintServices.insertComplaint(complaintVO);
				return new ModelAndView("redirect:/user/loadComplaint");
	}
	
	@RequestMapping(value="/admin/viewComplaint",method=RequestMethod.GET)
	public ModelAndView viewComplain(@ModelAttribute ComplaintVO complaintVO) {
		
		List complaintList = this.complaintServices.viewComplaint(complaintVO);
		
		return new ModelAndView("/admin/viewComplaint","complaintList",complaintList);
		
	}
	
	@RequestMapping(value="admin/replytoUser",method=RequestMethod.GET)
	public ModelAndView loadReply(@RequestParam("id")int id,@ModelAttribute ComplaintVO complaintVO) {
		
		
		complaintVO.setId(id);
		
		List complaintList = this.complaintServices.searchComplaint(complaintVO);
	
		return new ModelAndView("admin/addReply","complaintVO",(ComplaintVO) complaintList.get(0));
	}
	
	@RequestMapping(value="admin/insertReply",method=RequestMethod.POST)
	public ModelAndView insertReply(@ModelAttribute ComplaintVO complaintVO) {
		
		Date d = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		complaintVO.setReplyDate(dateFormat.format(d));
		complaintVO.setComplaintStatus("resolved");
		
		this.complaintServices.insertComplaint(complaintVO);
		
		return new ModelAndView("redirect:/admin/viewComplaint");
	}
	
	@RequestMapping(value="/user/viewuserComplaint",method=RequestMethod.GET)
	public ModelAndView viewstaffComplaint(@ModelAttribute ComplaintVO complaintVO,LoginVO loginVO) {
		
		String userName = Basemethods.getUser();
		loginVO.setUsername(userName);
		List loginList  = loginServices.searchLoginID(loginVO); 	
		LoginVO loginVO2 = (LoginVO) loginList.get(0);	
		complaintVO.setLoginVO(loginVO2);
		
		List complaintList = this.complaintServices.viewuserComplaint(complaintVO);
		
		return new ModelAndView("/user/viewComplaint","complaintList",complaintList);
		
	}
	
}
