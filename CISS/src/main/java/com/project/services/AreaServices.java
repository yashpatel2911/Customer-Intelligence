package com.project.services;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AreaDAO;
import com.project.vo.AreaVO;
import com.project.vo.CityVO;





@Service
public class AreaServices {
	
	@Autowired AreaDAO areaDAO;
	
	@Transactional
	public void insertArea(AreaVO areaVO)
	{
		this.areaDAO.insertArea(areaVO);
	}

	@Transactional
	public List searchArea(AreaVO areaVO)
	{
		return areaDAO.searchArea(areaVO);
	}
	

	@Transactional
	public void deleteArea(AreaVO areaVO)
	{
		this.areaDAO.deleteArea(areaVO);
	}
	
	
	@Transactional
	public void updateArea(AreaVO areaVO)
	{
		this.areaDAO.updateArea(areaVO);
	}
	
	@Transactional
	public List editArea(AreaVO areaVO) {
		return areaDAO.editArea(areaVO);
	}
	
	
	
}
