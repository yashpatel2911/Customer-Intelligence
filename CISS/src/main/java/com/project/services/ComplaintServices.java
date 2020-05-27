package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplaintDAO;
import com.project.vo.ComplaintVO;


@Service
public class ComplaintServices {

	@Autowired
	ComplaintDAO complaintDAO;
	
	@Transactional
	public void insertComplaint(ComplaintVO complaintVO) {
		// TODO Auto-generated method stub
		this.complaintDAO.insertComplaint(complaintVO);
	}
	@Transactional
	public List viewComplaint(ComplaintVO complaintVO) {
		// TODO Auto-generated method stub
		return complaintDAO.viewComplaint(complaintVO);
	}
	@Transactional
		public List searchComplaint(ComplaintVO complaintVO) {
			
			List complaintList = this.complaintDAO.searchComplaint(complaintVO);
			
			return complaintList;
			
		}
	
	@Transactional
    public List viewuserComplaint(ComplaintVO complaintVO) {
    	
        List complaintList1 =	this.complaintDAO.viewuserComplaint(complaintVO);
        return complaintList1;
    
    }

	
	}


	
	
