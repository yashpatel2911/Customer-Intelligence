package com.project.services;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.PackageDAO;
import com.project.vo.PackageVO;

@Service
public class PackageServices {
	
	@Autowired PackageDAO packageDAO;

	@Transactional
	public void insertPackage(PackageVO packageVO)
	{
		this.packageDAO.insertPackage(packageVO);
	}
	
	@Transactional
	
	public List searchPackage(PackageVO packageVO)
	{
		return packageDAO.searchPackage(packageVO);
	}
	
	@Transactional
	public void deletePackage(PackageVO packageVO)
	{
		this.packageDAO.deletePackage(packageVO);
	}
	
	@Transactional
	public void updatePackage(PackageVO packageVO)
	{
		this.packageDAO.updatePackage(packageVO);
	}
	
	
	
	@Transactional
	public List editPackage(PackageVO packageVO)
	{
		// TODO Auto-generated method stub
		return packageDAO.editPackage(packageVO);
	}
	
	}
		


