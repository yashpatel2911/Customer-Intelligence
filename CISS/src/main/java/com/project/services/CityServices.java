package com.project.services;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.vo.CityVO;




@Service
public class CityServices {
	
	@Autowired CityDAO cityDAO;
	
	@Transactional
	
	public void addCity(CityVO cityVO) {
		cityDAO.addCity(cityVO);
			
	}
	
	@Transactional
	
	public List searchCity(CityVO cityVO)
	{
		return cityDAO.searchCity(cityVO);
	}
	
@Transactional

	public void deleteCity(CityVO cityVO)
	{
		this.cityDAO.deleteCity(cityVO);
	}

@Transactional
public void updateCity(CityVO cityVO)
{
	this.cityDAO.updateCity(cityVO);
}



@Transactional
public List editCity(CityVO cityVO)
{
	// TODO Auto-generated method stub
	return cityDAO.editCity(cityVO);
}

}
	

	


