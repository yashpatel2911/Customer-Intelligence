package com.project.dao;

import java.util.List;

import com.project.vo.ComplaintVO;

public interface ComplaintDAO {
	
	public void insertComplaint(ComplaintVO complaintVO);

	public List viewComplaint(ComplaintVO complaintVO);

	public List searchComplaint(ComplaintVO complaintVO);
	
	public List viewuserComplaint(ComplaintVO complaintVO);

}

