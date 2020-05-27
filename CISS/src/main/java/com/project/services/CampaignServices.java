package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CampaignDAO;
import com.project.vo.CampaignVO;

@Service
public class CampaignServices {
	
@Autowired CampaignDAO campaignDAO;
	
	
	@Transactional
	
	public void insertCampaign(CampaignVO campaignVO)
	{
		this.campaignDAO.insertCampaign(campaignVO);
	}
	
	@Transactional
	public List searchCampaign(CampaignVO campaignVO)
	{
		return campaignDAO.searchCampaign(campaignVO);
	}
	

	@Transactional
	public void deleteCampaign(CampaignVO campaignVO)
	{
		this.campaignDAO.deleteCampaign(campaignVO);
	}
	@Transactional
	public void updateCampaign(CampaignVO campaignVO)
	{
		this.campaignDAO.updateCampaign(campaignVO);
	}
	@Transactional
	public List editCampaign(CampaignVO campaignVO) {
		return campaignDAO.editCampaign(campaignVO);
	}
	


}
