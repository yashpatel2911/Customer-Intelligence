package com.project.dao;

import java.util.List;

import com.project.vo.CityVO;


public interface CityDAO {
	

	public void addCity(CityVO cityVO); 
	
	public  List searchCity(CityVO cityVO);
	
	public void  deleteCity(CityVO cityVO);
	
	public  List editCity(CityVO cityVO);

	public void  updateCity(CityVO cityVO);
	

}
