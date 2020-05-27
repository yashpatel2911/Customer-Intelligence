package com.project.services;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.DatasetDAO;
import com.project.vo.DatasetVO;

@Service
public class DatasetServices {
	
	@Autowired DatasetDAO datasetDAO;
	
	@Transactional
	public void addDataset(DatasetVO datasetVO) {
		this.datasetDAO.addDataset(datasetVO);
			
	}
	
	@Transactional
	
	public List searchDataset(DatasetVO datasetVO)
	{
		List ls= this.datasetDAO.searchDataset(datasetVO);
		return ls;
	}
	
	@Transactional

	public void deleteDataset(DatasetVO datasetVO)
	{
		this.datasetDAO.deleteDataset(datasetVO);
	}

@Transactional
public void updateDataset(DatasetVO datasetVO)
{
	this.datasetDAO.updateDataset(datasetVO);
}



	@Transactional
	public List editDataset(DatasetVO datasetVO)
	{
	// TODO Auto-generated method stub
	return datasetDAO.editDataset(datasetVO);
}


}
