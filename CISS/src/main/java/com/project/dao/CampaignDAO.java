package com.project.dao;

import java.util.List;

import com.project.vo.CampaignVO;

public interface CampaignDAO {
	
	public void insertCampaign(CampaignVO campaignVO);

	public List searchCampaign(CampaignVO campaignVO);

	public void  deleteCampaign(CampaignVO campaignVO);
	
	public  List editCampaign(CampaignVO campaignVO);
	
	public void  updateCampaign(CampaignVO campaignVO);


}
