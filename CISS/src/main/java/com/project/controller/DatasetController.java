package com.project.controller;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.services.DatasetServices;
import com.project.vo.DatasetVO;


@Controller
public class DatasetController {
	
	@Autowired DatasetServices datasetServices;
	
	@RequestMapping(value = "admin/loadDataset", method = RequestMethod.GET)
	public ModelAndView loadDataset() {
	
		return new ModelAndView("admin/addDataset","DatasetVO",new DatasetVO());
	}
	
	@RequestMapping(value = "admin/insertDataset", method = RequestMethod.POST)
	public ModelAndView insertDataset(@ModelAttribute DatasetVO datasetVO,@RequestParam ("file")MultipartFile file,HttpSession session ) 
	{
	
		String path = session.getServletContext().getRealPath("/");
		
		String finalPath = path + "document\\demo\\";
		
		String fileName = file.getOriginalFilename();
		
		try
		{
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(finalPath+"/"+fileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		datasetVO.setDatasetName(fileName);
		datasetVO.setDatasetPath(finalPath);
		
		this.datasetServices.addDataset(datasetVO);
		return new ModelAndView("redirect:/admin/searchDataset");
	}
	
	@RequestMapping(value="admin/searchDataset" , method=RequestMethod.GET)
	public ModelAndView searchDataset(@ModelAttribute DatasetVO datasetVO)
	{
		List detasetList=this.datasetServices.searchDataset(datasetVO);
		System.out.println("==========="+detasetList.size());
	 return new ModelAndView("admin/viewDataset","detasetList",detasetList);
		
	}
	
		@RequestMapping(value = "admin/datasetDelete", method = RequestMethod.GET)
	
	public ModelAndView deleteDataset(DatasetVO datasetVO,@RequestParam("datasetId")int datasetId) {
		
		datasetVO.setDatasetId(datasetId);
		List datasetList =this.datasetServices.editDataset(datasetVO);
		datasetVO =(DatasetVO)datasetList.get(0);
		
		datasetVO.setDeleteStatus(false);
		this.datasetServices.updateDataset(datasetVO);
		
		return new ModelAndView("redirect:/admin/searchDataset");
	}	

}
